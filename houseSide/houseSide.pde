// Tests the RX-B1 (433.92 MHz) RF receiver)

char waterLevelString[8];
int currentByte = 0;
int i=0;

void setup() {
  configureLCD();
  setupPins();
}

void configureLCD() {
  Serial.begin(115200);
  Serial.write(124); // "|"
  Serial.write(7);
  Serial.write(50); // "2" This sets baud rate to 9600
  Serial.end();
  delay(2000);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available() > 0) {
    currentByte = Serial.read();
    waterLevelString[i] = currentByte;
    i++;
//    Serial.print(i);
    if (currentByte == 10) {
      waterLevelString[i]=0;
      delay(200);
      clearScreen();
      Serial.print(waterLevelString);
      i=0;
    }
  }
}

void setupPins() {
  int fiveVoltPin = 2; // use pin 2 for a 5V input to RF receiver
  int gndPin = 3;
  
  pinMode(fiveVoltPin, OUTPUT);
  pinMode(gndPin, OUTPUT);
  digitalWrite(fiveVoltPin, HIGH);
  digitalWrite(gndPin, LOW);
}

void clearScreen() {
  Serial.write(124);
  Serial.write((byte)0);
}
