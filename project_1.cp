#line 1 "C:/Users/Alvin/Documents/LBYCPA3/PROJECT1/project_1.c"
int sevenSeg[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};

int hoursTens = 0;
int hoursOnes = 5;
int minutesTens = 4;
int minutesOnes = 5;
int secondsTens = 0;
int secondsOnes = 0;
int milliseconds = 0;
int hours = 0;
int period = 1;
int format = 0;
int counter = 0;
int maxCounter = 400000000;
int on = 1;

void display() {
 PORTD = 0X3F;
 PORTC = sevenSeg[secondsTens];
 PORTD = 0X2F;
 PORTD = 0X3F;
 PORTC = sevenSeg[secondsOnes];
 PORTD = 0X1F;
 PORTD = 0X3F;
 PORTC = sevenSeg[minutesOnes];
 PORTD = 0X3E;
 PORTD = 0X3F;
 PORTC = sevenSeg[minutesTens];
 PORTD = 0X3D;
 PORTD = 0X3F;
 PORTC = sevenSeg[hoursOnes];
 PORTD = 0X3B;
 PORTD = 0X3F;
 PORTC = sevenSeg[hoursTens];
 PORTD = 0X37;
 PORTD = 0X3F;
}

void reset(void){
 hoursTens = 0;
 hoursOnes = 0;
 minutesTens = 0;
 minutesOnes = 0;
 secondsTens = 0;
 secondsOnes = 0;
 milliseconds = 0;
 format = 0;
 counter = 0;
}

void main(void) {
 TRISB = 0x0F;



 TRISC = 0x00;
 TRISD = 0x00;

 while(1) {
 if(PORTB.RB0 == 1){
 delay_ms(50);
 if(PORTB.RB0 == 1){
 on = 0;
 while(on == 0){
 if(PORTB.RB0 == 1){
 delay_ms(50);
 if(PORTB.RB0 == 1){
 reset();
 on = 1;
 }
 }
 }
 }
 }
 if(PORTB.RB1 == 1){
 reset();
 }
 if(PORTB.RB2 == 1){
 delay_ms(50);
 if(PORTB.RB2 == 1){
 if(format == 0){
 if(period == 1){
 hoursTens = hoursTens + 1;
 hoursOnes = hoursOnes + 2;
 format = 1;
 }
 } else if (format == 1){
 if(hoursTens >= 1 && hoursOnes > 2){
 hoursTens = hoursTens - 1;
 hoursOnes = hoursOnes - 2;
 format = 0;
 period = 1;
 }
 }
 }
 }
 if(counter > maxCounter) {

 milliseconds++;
 if (milliseconds > 999){
 milliseconds = 0;
 secondsOnes++;
 if(secondsOnes > 9) {
 secondsOnes = 0;
 secondsTens++;
 if(secondsTens > 5) {
 secondsTens = 0;

 minutesOnes++;
 if(minutesOnes > 9) {
 minutesOnes = 0;
 minutesTens++;
 if(minutesTens > 5) {
 minutesTens = 0;

 hoursOnes++;
 if(format == 0) {
 if(hoursTens == 0 && hoursOnes > 9) {
 hoursOnes = 0;
 hoursTens++;
 } else if(hoursTens == 1 && hoursOnes > 2) {
 hoursOnes = 1;
 hoursTens = 0;
 period = period ^ 1;
 }
 } else {
 if(hoursTens == 0 && hoursOnes > 9) {
 hoursOnes = 0;
 hoursTens++;
 } else if(hoursTens == 1 && hoursOnes == 2) {
 hoursOnes = 0;
 period = 1;
 } else if(hoursTens == 1 && hoursOnes > 9) {
 hoursOnes = 0;
 hoursTens++;
 } else if(hoursTens == 2 && hoursOnes > 3) {
 hoursOnes = 0;
 hoursTens = 0;
 period = 0;
 }
 }
 }
 }
 }
 }
 }
 }

 counter++;
 if(counter > maxCounter) {
 counter = 0;
 }
 display();
 }
}
