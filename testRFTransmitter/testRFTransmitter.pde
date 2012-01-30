// Tests the TX-C1 transmitter.

//#include <SoftwareSerial.h>
//SoftwareSerial myserial(2,3);

void setup() {
  Serial.begin(300);
  //  myserial.begin(300);
}

void loop() {
  Serial.println("hello");
  delay(2000);
}

