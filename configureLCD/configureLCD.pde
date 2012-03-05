int currentByte = 0;
void setup() {
  Serial.begin(115200);
  Serial.write(124); // "|"
  Serial.write(7);
  Serial.write(50); // "2" This sets baud rate to 9600
  Serial.end();
  delay(2000);
  Serial.begin(9600);
}

void loop() {
  Serial.print("9600...");
  delay(2000);
}
