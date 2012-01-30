// Tests the Maxbotix LV-EZ4 ultrasonic range-finder

void setup() {
  Serial.begin(9600);
}

void loop() {
  int ultrasonicSensorValue = analogRead(A0);
  Serial.println(ultrasonicSensorValue);
}
