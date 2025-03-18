
_display:

;project_1_buttons.c,18 :: 		void display() {
;project_1_buttons.c,19 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1_buttons.c,20 :: 		PORTC = sevenSeg[secondsTens];
	MOVF       _secondsTens+0, 0
	MOVWF      R0+0
	MOVF       _secondsTens+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sevenSeg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project_1_buttons.c,21 :: 		PORTD = 0X2F;
	MOVLW      47
	MOVWF      PORTD+0
;project_1_buttons.c,22 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1_buttons.c,23 :: 		PORTC = sevenSeg[secondsOnes];
	MOVF       _secondsOnes+0, 0
	MOVWF      R0+0
	MOVF       _secondsOnes+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sevenSeg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project_1_buttons.c,24 :: 		PORTD = 0X1F;
	MOVLW      31
	MOVWF      PORTD+0
;project_1_buttons.c,25 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1_buttons.c,26 :: 		PORTC = sevenSeg[minutesOnes];
	MOVF       _minutesOnes+0, 0
	MOVWF      R0+0
	MOVF       _minutesOnes+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sevenSeg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project_1_buttons.c,27 :: 		PORTD = 0X3E;
	MOVLW      62
	MOVWF      PORTD+0
;project_1_buttons.c,28 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1_buttons.c,29 :: 		PORTC = sevenSeg[minutesTens];
	MOVF       _minutesTens+0, 0
	MOVWF      R0+0
	MOVF       _minutesTens+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sevenSeg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project_1_buttons.c,30 :: 		PORTD = 0X3D;
	MOVLW      61
	MOVWF      PORTD+0
;project_1_buttons.c,31 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1_buttons.c,32 :: 		PORTC = sevenSeg[hoursOnes];
	MOVF       _hoursOnes+0, 0
	MOVWF      R0+0
	MOVF       _hoursOnes+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sevenSeg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project_1_buttons.c,33 :: 		PORTD = 0X3B;
	MOVLW      59
	MOVWF      PORTD+0
;project_1_buttons.c,34 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1_buttons.c,35 :: 		PORTC = sevenSeg[hoursTens];
	MOVF       _hoursTens+0, 0
	MOVWF      R0+0
	MOVF       _hoursTens+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _sevenSeg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project_1_buttons.c,36 :: 		PORTD = 0X37;
	MOVLW      55
	MOVWF      PORTD+0
;project_1_buttons.c,37 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1_buttons.c,38 :: 		}
L_end_display:
	RETURN
; end of _display

_main:

;project_1_buttons.c,40 :: 		void main(void) {
;project_1_buttons.c,41 :: 		TRISB = 0x0F;
	MOVLW      15
	MOVWF      TRISB+0
;project_1_buttons.c,46 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;project_1_buttons.c,47 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;project_1_buttons.c,49 :: 		while(1) {
L_main0:
;project_1_buttons.c,50 :: 		if(PORTB.RB2 == 1){
	BTFSS      PORTB+0, 2
	GOTO       L_main2
;project_1_buttons.c,51 :: 		if(format == 0){
	MOVLW      0
	XORWF      _format+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      0
	XORWF      _format+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;project_1_buttons.c,52 :: 		if(hoursTens > 11){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursTens+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVF       _hoursTens+0, 0
	SUBLW      11
L__main40:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;project_1_buttons.c,53 :: 		hoursTens = hoursTens - 12;
	MOVLW      12
	SUBWF      _hoursTens+0, 1
	BTFSS      STATUS+0, 0
	DECF       _hoursTens+1, 1
;project_1_buttons.c,54 :: 		}
L_main4:
;project_1_buttons.c,56 :: 		}
L_main3:
;project_1_buttons.c,57 :: 		}
L_main2:
;project_1_buttons.c,58 :: 		if(counter > maxCounter) {
	MOVLW      128
	XORWF      _maxCounter+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVF       _counter+0, 0
	SUBWF      _maxCounter+0, 0
L__main41:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;project_1_buttons.c,60 :: 		milliseconds++;
	INCF       _milliseconds+0, 1
	BTFSC      STATUS+0, 2
	INCF       _milliseconds+1, 1
;project_1_buttons.c,61 :: 		if (milliseconds > 999){
	MOVLW      128
	XORLW      3
	MOVWF      R0+0
	MOVLW      128
	XORWF      _milliseconds+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVF       _milliseconds+0, 0
	SUBLW      231
L__main42:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;project_1_buttons.c,62 :: 		milliseconds = 0;
	CLRF       _milliseconds+0
	CLRF       _milliseconds+1
;project_1_buttons.c,63 :: 		secondsOnes++;
	INCF       _secondsOnes+0, 1
	BTFSC      STATUS+0, 2
	INCF       _secondsOnes+1, 1
;project_1_buttons.c,64 :: 		if(secondsOnes > 9) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _secondsOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVF       _secondsOnes+0, 0
	SUBLW      9
L__main43:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;project_1_buttons.c,65 :: 		secondsOnes = 0;
	CLRF       _secondsOnes+0
	CLRF       _secondsOnes+1
;project_1_buttons.c,66 :: 		secondsTens++;
	INCF       _secondsTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _secondsTens+1, 1
;project_1_buttons.c,67 :: 		if(secondsTens > 5) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _secondsTens+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVF       _secondsTens+0, 0
	SUBLW      5
L__main44:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;project_1_buttons.c,68 :: 		secondsTens = 0;
	CLRF       _secondsTens+0
	CLRF       _secondsTens+1
;project_1_buttons.c,70 :: 		minutesOnes++;
	INCF       _minutesOnes+0, 1
	BTFSC      STATUS+0, 2
	INCF       _minutesOnes+1, 1
;project_1_buttons.c,71 :: 		if(minutesOnes > 9) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _minutesOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main45
	MOVF       _minutesOnes+0, 0
	SUBLW      9
L__main45:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;project_1_buttons.c,72 :: 		minutesOnes = 0;
	CLRF       _minutesOnes+0
	CLRF       _minutesOnes+1
;project_1_buttons.c,73 :: 		minutesTens++;
	INCF       _minutesTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _minutesTens+1, 1
;project_1_buttons.c,74 :: 		if(minutesTens > 5) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _minutesTens+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main46
	MOVF       _minutesTens+0, 0
	SUBLW      5
L__main46:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;project_1_buttons.c,75 :: 		minutesTens = 0;
	CLRF       _minutesTens+0
	CLRF       _minutesTens+1
;project_1_buttons.c,77 :: 		hoursOnes++;
	INCF       _hoursOnes+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursOnes+1, 1
;project_1_buttons.c,78 :: 		if(format == 0) { // 12hr format
	MOVLW      0
	XORWF      _format+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main47
	MOVLW      0
	XORWF      _format+0, 0
L__main47:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;project_1_buttons.c,79 :: 		if(hoursTens == 0 && hoursOnes > 9) {
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main48
	MOVLW      0
	XORWF      _hoursTens+0, 0
L__main48:
	BTFSS      STATUS+0, 2
	GOTO       L_main14
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main49
	MOVF       _hoursOnes+0, 0
	SUBLW      9
L__main49:
	BTFSC      STATUS+0, 0
	GOTO       L_main14
L__main36:
;project_1_buttons.c,80 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1_buttons.c,81 :: 		hoursTens++;
	INCF       _hoursTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursTens+1, 1
;project_1_buttons.c,82 :: 		} else if(hoursTens == 1 && hoursOnes > 2) {
	GOTO       L_main15
L_main14:
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main50
	MOVLW      1
	XORWF      _hoursTens+0, 0
L__main50:
	BTFSS      STATUS+0, 2
	GOTO       L_main18
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main51
	MOVF       _hoursOnes+0, 0
	SUBLW      2
L__main51:
	BTFSC      STATUS+0, 0
	GOTO       L_main18
L__main35:
;project_1_buttons.c,83 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1_buttons.c,84 :: 		hoursTens = 0;
	CLRF       _hoursTens+0
	CLRF       _hoursTens+1
;project_1_buttons.c,85 :: 		period = period ^ 1; //XOR operation to flip period between 1 and 0
	MOVLW      1
	XORWF      _period+0, 1
	MOVLW      0
	XORWF      _period+1, 1
;project_1_buttons.c,86 :: 		}
L_main18:
L_main15:
;project_1_buttons.c,87 :: 		} else { // 24hr format
	GOTO       L_main19
L_main11:
;project_1_buttons.c,88 :: 		if(hoursTens == 0 && hoursOnes > 9) {
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main52
	MOVLW      0
	XORWF      _hoursTens+0, 0
L__main52:
	BTFSS      STATUS+0, 2
	GOTO       L_main22
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main53
	MOVF       _hoursOnes+0, 0
	SUBLW      9
L__main53:
	BTFSC      STATUS+0, 0
	GOTO       L_main22
L__main34:
;project_1_buttons.c,89 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1_buttons.c,90 :: 		hoursTens++;
	INCF       _hoursTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursTens+1, 1
;project_1_buttons.c,91 :: 		} else if(hoursTens == 1 && hoursOnes > 9) {
	GOTO       L_main23
L_main22:
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main54
	MOVLW      1
	XORWF      _hoursTens+0, 0
L__main54:
	BTFSS      STATUS+0, 2
	GOTO       L_main26
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main55
	MOVF       _hoursOnes+0, 0
	SUBLW      9
L__main55:
	BTFSC      STATUS+0, 0
	GOTO       L_main26
L__main33:
;project_1_buttons.c,92 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1_buttons.c,93 :: 		hoursTens++;
	INCF       _hoursTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursTens+1, 1
;project_1_buttons.c,94 :: 		} else if(hoursTens == 2 && hoursOnes > 3) {
	GOTO       L_main27
L_main26:
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main56
	MOVLW      2
	XORWF      _hoursTens+0, 0
L__main56:
	BTFSS      STATUS+0, 2
	GOTO       L_main30
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main57
	MOVF       _hoursOnes+0, 0
	SUBLW      3
L__main57:
	BTFSC      STATUS+0, 0
	GOTO       L_main30
L__main32:
;project_1_buttons.c,95 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1_buttons.c,96 :: 		hoursTens = 0;
	CLRF       _hoursTens+0
	CLRF       _hoursTens+1
;project_1_buttons.c,97 :: 		}
L_main30:
L_main27:
L_main23:
;project_1_buttons.c,98 :: 		}
L_main19:
;project_1_buttons.c,99 :: 		}
L_main10:
;project_1_buttons.c,100 :: 		}
L_main9:
;project_1_buttons.c,101 :: 		}
L_main8:
;project_1_buttons.c,102 :: 		}
L_main7:
;project_1_buttons.c,103 :: 		}
L_main6:
;project_1_buttons.c,104 :: 		}
L_main5:
;project_1_buttons.c,106 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;project_1_buttons.c,107 :: 		if(counter > maxCounter) {
	MOVLW      128
	XORWF      _maxCounter+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	MOVF       _counter+0, 0
	SUBWF      _maxCounter+0, 0
L__main58:
	BTFSC      STATUS+0, 0
	GOTO       L_main31
;project_1_buttons.c,108 :: 		counter = 0;
	CLRF       _counter+0
	CLRF       _counter+1
;project_1_buttons.c,109 :: 		}
L_main31:
;project_1_buttons.c,110 :: 		display();
	CALL       _display+0
;project_1_buttons.c,111 :: 		}
	GOTO       L_main0
;project_1_buttons.c,112 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
