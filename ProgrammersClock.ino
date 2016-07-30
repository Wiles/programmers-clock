#include <LiquidCrystal.h>
#include <Wire.h>
#include "RTClib.h"

RTC_DS1307 RTC;
LiquidCrystal lcd(12, 11, 10, 9, 8, 7);

void setup() {
  lcd.begin(16, 2);    
  Wire.begin();
  RTC.begin();
  if (! RTC.isrunning()) {
    RTC.adjust(DateTime(__DATE__, __TIME__));
  } else {
    RTC.adjust(DateTime(__DATE__, __TIME__));
  }
}
int count = 0;
void loop() {
  DateTime now = RTC.now();
  lcd.setCursor(0,0);

  String iso = toISO8601(now);
  lcd.print(iso);
  lcd.setCursor(0, 1);
  lcd.print(iso.substring(16));
  
  lcd.setCursor(6, 1);
  lcd.print( now.unixtime());
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

