#include <Wire.h>
#include "RTClib.h"
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include <WiFiManager.h>  // https://github.com/tzapu/WiFiManager v: 0.10.0

RTC_DS1307 RTC;

WiFiUDP udp;
const int NTP_PACKET_SIZE = 48; // NTP time stamp is in the first 48 bytes of the message
byte packetBuffer[NTP_PACKET_SIZE]; //buffer to hold incoming and outgoing packets
unsigned int localPort = 2390;      // local port to listen for UDP packets

IPAddress timeServerIP; // time.nist.gov NTP server address
const char* ntpServerName = "time.nist.gov";

WiFiManager wifiManager;

void setup() {
  Wire.pins(0,2);
  Wire.begin();
  RTC.begin();
  Serial.begin(115200);
  
  wifiManager.autoConnect("Clock");
  
  udp.begin(localPort);
}

unsigned long prevNTP = 0;
unsigned long then = 0;
void loop() {
  DateTime now = RTC.now();
  if (then != now.unixtime()) {
    then = now.unixtime();
    String iso = toISO8601(now);
    Serial.println(iso);
  }

  if (now.unixtime() - prevNTP > 60 * 60  * 24) {
    Serial.print("Fetching time...");
    unsigned long currentNPT = getUnixEpoch();
    if (currentNPT) {
      Serial.println("done.");
      RTC.adjust(DateTime(currentNPT));
      prevNTP = currentNPT;
    } else {
      Serial.println("error.");
    }
  }
}

String toISO8601(DateTime time) {
  String iso = "";

  iso += time.year();
  iso += "-";

  if (time.month() < 10) {
    iso += "0";
  }

  iso += time.month();
  
  iso += "-";
  
  if (time.day() < 10) {
    iso += "0";
  }

  iso += time.day();
  
  iso += "T";
  
  if (time.hour() < 10) {
    iso += "0";
  }

  iso += time.hour();
  
  iso += ":";

  if (time.minute() < 10) {
    iso += "0";
  }

  iso += time.minute();
  
  iso += ":";
  
  if (time.second() < 10) {
    iso += "0";
  }
  
  iso += time.second();
  
  iso += "Z";

  return iso;
}


unsigned long getUnixEpoch() {

  //get a random server from the pool
  WiFi.hostByName(ntpServerName, timeServerIP); 

  sendNTPpacket(timeServerIP); // send an NTP packet to a time server
  // wait to see if a reply is available
  delay(1000);
  
  int cb = udp.parsePacket();
    
  if (!cb) {
    return 0;
  }
  else {
    udp.read(packetBuffer, NTP_PACKET_SIZE);

    unsigned long highWord = word(packetBuffer[40], packetBuffer[41]);
    unsigned long lowWord = word(packetBuffer[42], packetBuffer[43]);

    // Unix time starts on Jan 1 1970. In seconds, that's 2208988800:
    
    unsigned long secsSince1900 = highWord << 16 | lowWord;
    const unsigned long seventyYears = 2208988800UL;

    unsigned long epoch = secsSince1900 - seventyYears;
    return epoch;
  }
}

// send an NTP request to the time server at the given address
unsigned long sendNTPpacket(IPAddress& address)
{
  // set all bytes in the buffer to 0
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  // Initialize values needed to form NTP request
  // (see URL above for details on the packets)
  packetBuffer[0] = 0b11100011;   // LI, Version, Mode
  packetBuffer[1] = 0;     // Stratum, or type of clock
  packetBuffer[2] = 6;     // Polling Interval
  packetBuffer[3] = 0xEC;  // Peer Clock Precision
  // 8 bytes of zero for Root Delay & Root Dispersion
  packetBuffer[12]  = 49;
  packetBuffer[13]  = 0x4E;
  packetBuffer[14]  = 49;
  packetBuffer[15]  = 52;

  // all NTP fields have been given values, now
  // you can send a packet requesting a timestamp:
  udp.beginPacket(address, 123); //NTP requests are to port 123
  udp.write(packetBuffer, NTP_PACKET_SIZE);
  udp.endPacket();
}
