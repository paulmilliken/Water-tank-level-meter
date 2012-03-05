
int sensorVal;

void setup() {
  initialisePins();
  Serial.begin(9600);
}

void loop() {
  sensorVal = getSensorValue();
  Serial.println(sensorVal,DEC);
  delay(2000);
}

void initialisePins() {
  // For convenience, we use pin 2 to supply 5V to the rf
  // transmitter and pin 3 for a return path:
  int fiveVoltPin = 2;
  int gndPin = 3;

  pinMode(fiveVoltPin, OUTPUT);
  pinMode(gndPin, OUTPUT);
  digitalWrite(fiveVoltPin, HIGH);
  digitalWrite(gndPin, LOW);
}

int getSensorValue() {
  int ultrasonicSensorValue = analogRead(A0);
  return(ultrasonicSensorValue);
}
