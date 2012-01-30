// Tests the RX-B1 (433.92 MHz) RF receiver)

int currentByte = 0;
void setup() {
  Serial.begin(300);
}

void loop() {
  if (Serial.available() > 0) {
    currentByte = Serial.read();
    Serial.print(".");
    Serial.print(currentByte, BYTE);
//    Serial.print("\n");
  }
}
