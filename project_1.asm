
_display:

;project_1.c,17 :: 		void display() {
;project_1.c,18 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1.c,19 :: 		PORTC = sevenSeg[secondsTens];
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
;project_1.c,20 :: 		PORTD = 0X2F;
	MOVLW      47
	MOVWF      PORTD+0
;project_1.c,21 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1.c,22 :: 		PORTC = sevenSeg[secondsOnes];
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
;project_1.c,23 :: 		PORTD = 0X1F;
	MOVLW      31
	MOVWF      PORTD+0
;project_1.c,24 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1.c,25 :: 		PORTC = sevenSeg[minutesOnes];
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
;project_1.c,26 :: 		PORTD = 0X3E;
	MOVLW      62
	MOVWF      PORTD+0
;project_1.c,27 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1.c,28 :: 		PORTC = sevenSeg[minutesTens];
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
;project_1.c,29 :: 		PORTD = 0X3D;
	MOVLW      61
	MOVWF      PORTD+0
;project_1.c,30 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1.c,31 :: 		PORTC = sevenSeg[hoursOnes];
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
;project_1.c,32 :: 		PORTD = 0X3B;
	MOVLW      59
	MOVWF      PORTD+0
;project_1.c,33 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1.c,34 :: 		PORTC = sevenSeg[hoursTens];
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
;project_1.c,35 :: 		PORTD = 0X37;
	MOVLW      55
	MOVWF      PORTD+0
;project_1.c,36 :: 		PORTD = 0X3F;
	MOVLW      63
	MOVWF      PORTD+0
;project_1.c,37 :: 		}
L_end_display:
	RETURN
; end of _display

_reset:

;project_1.c,39 :: 		void reset(void){
;project_1.c,40 :: 		hoursTens = 0;
	CLRF       _hoursTens+0
	CLRF       _hoursTens+1
;project_1.c,41 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1.c,42 :: 		minutesTens = 0;
	CLRF       _minutesTens+0
	CLRF       _minutesTens+1
;project_1.c,43 :: 		minutesOnes = 0;
	CLRF       _minutesOnes+0
	CLRF       _minutesOnes+1
;project_1.c,44 :: 		secondsTens = 0;
	CLRF       _secondsTens+0
	CLRF       _secondsTens+1
;project_1.c,45 :: 		secondsOnes = 0;
	CLRF       _secondsOnes+0
	CLRF       _secondsOnes+1
;project_1.c,46 :: 		milliseconds = 0;
	CLRF       _milliseconds+0
	CLRF       _milliseconds+1
;project_1.c,47 :: 		format = 0;
	CLRF       _format+0
	CLRF       _format+1
;project_1.c,48 :: 		counter = 0;
	CLRF       _counter+0
	CLRF       _counter+1
;project_1.c,49 :: 		}
L_end_reset:
	RETURN
; end of _reset

_main:

;project_1.c,51 :: 		void main(void) {
;project_1.c,52 :: 		TRISB = 0x0F;
	MOVLW      15
	MOVWF      TRISB+0
;project_1.c,56 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;project_1.c,57 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;project_1.c,59 :: 		while(1) {
L_main0:
;project_1.c,60 :: 		if(PORTB.RB0 == 1){
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;project_1.c,61 :: 		delay_ms(50); // all delay_ms instances are for software debounce
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;project_1.c,62 :: 		if(PORTB.RB0 == 1){
	BTFSS      PORTB+0, 0
	GOTO       L_main4
;project_1.c,63 :: 		on = 0;
	CLRF       _on+0
	CLRF       _on+1
;project_1.c,64 :: 		while(on == 0){
L_main5:
	MOVLW      0
	XORWF      _on+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main62
	MOVLW      0
	XORWF      _on+0, 0
L__main62:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;project_1.c,65 :: 		if(PORTB.RB0 == 1){
	BTFSS      PORTB+0, 0
	GOTO       L_main7
;project_1.c,66 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;project_1.c,67 :: 		if(PORTB.RB0 == 1){
	BTFSS      PORTB+0, 0
	GOTO       L_main9
;project_1.c,68 :: 		reset();
	CALL       _reset+0
;project_1.c,69 :: 		on = 1;
	MOVLW      1
	MOVWF      _on+0
	MOVLW      0
	MOVWF      _on+1
;project_1.c,70 :: 		}
L_main9:
;project_1.c,71 :: 		}
L_main7:
;project_1.c,72 :: 		}
	GOTO       L_main5
L_main6:
;project_1.c,73 :: 		}
L_main4:
;project_1.c,74 :: 		}
L_main2:
;project_1.c,75 :: 		if(PORTB.RB1 == 1){
	BTFSS      PORTB+0, 1
	GOTO       L_main10
;project_1.c,76 :: 		reset();
	CALL       _reset+0
;project_1.c,77 :: 		}
L_main10:
;project_1.c,78 :: 		if(PORTB.RB2 == 1){
	BTFSS      PORTB+0, 2
	GOTO       L_main11
;project_1.c,79 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;project_1.c,80 :: 		if(PORTB.RB2 == 1){
	BTFSS      PORTB+0, 2
	GOTO       L_main13
;project_1.c,81 :: 		if(format == 0){
	MOVLW      0
	XORWF      _format+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main63
	MOVLW      0
	XORWF      _format+0, 0
L__main63:
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;project_1.c,82 :: 		if(period == 1){
	MOVLW      0
	XORWF      _period+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVLW      1
	XORWF      _period+0, 0
L__main64:
	BTFSS      STATUS+0, 2
	GOTO       L_main15
;project_1.c,83 :: 		hoursTens = hoursTens + 1;
	INCF       _hoursTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursTens+1, 1
;project_1.c,84 :: 		hoursOnes = hoursOnes + 2;
	MOVLW      2
	ADDWF      _hoursOnes+0, 1
	BTFSC      STATUS+0, 0
	INCF       _hoursOnes+1, 1
;project_1.c,85 :: 		format = 1;
	MOVLW      1
	MOVWF      _format+0
	MOVLW      0
	MOVWF      _format+1
;project_1.c,86 :: 		}
L_main15:
;project_1.c,87 :: 		} else if (format == 1){
	GOTO       L_main16
L_main14:
	MOVLW      0
	XORWF      _format+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVLW      1
	XORWF      _format+0, 0
L__main65:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;project_1.c,88 :: 		if(hoursTens >= 1 && hoursOnes > 2){
	MOVLW      128
	XORWF      _hoursTens+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main66
	MOVLW      1
	SUBWF      _hoursTens+0, 0
L__main66:
	BTFSS      STATUS+0, 0
	GOTO       L_main20
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main67
	MOVF       _hoursOnes+0, 0
	SUBLW      2
L__main67:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
L__main58:
;project_1.c,89 :: 		hoursTens = hoursTens - 1;
	MOVLW      1
	SUBWF      _hoursTens+0, 1
	BTFSS      STATUS+0, 0
	DECF       _hoursTens+1, 1
;project_1.c,90 :: 		hoursOnes = hoursOnes - 2;
	MOVLW      2
	SUBWF      _hoursOnes+0, 1
	BTFSS      STATUS+0, 0
	DECF       _hoursOnes+1, 1
;project_1.c,91 :: 		format = 0;
	CLRF       _format+0
	CLRF       _format+1
;project_1.c,92 :: 		period = 1;
	MOVLW      1
	MOVWF      _period+0
	MOVLW      0
	MOVWF      _period+1
;project_1.c,93 :: 		}
L_main20:
;project_1.c,94 :: 		}
L_main17:
L_main16:
;project_1.c,95 :: 		}
L_main13:
;project_1.c,96 :: 		}
L_main11:
;project_1.c,97 :: 		if(counter > maxCounter) {
	MOVLW      128
	XORWF      _maxCounter+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main68
	MOVF       _counter+0, 0
	SUBWF      _maxCounter+0, 0
L__main68:
	BTFSC      STATUS+0, 0
	GOTO       L_main21
;project_1.c,99 :: 		milliseconds++;
	INCF       _milliseconds+0, 1
	BTFSC      STATUS+0, 2
	INCF       _milliseconds+1, 1
;project_1.c,100 :: 		if (milliseconds > 999){
	MOVLW      128
	XORLW      3
	MOVWF      R0+0
	MOVLW      128
	XORWF      _milliseconds+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main69
	MOVF       _milliseconds+0, 0
	SUBLW      231
L__main69:
	BTFSC      STATUS+0, 0
	GOTO       L_main22
;project_1.c,101 :: 		milliseconds = 0;
	CLRF       _milliseconds+0
	CLRF       _milliseconds+1
;project_1.c,102 :: 		secondsOnes++;
	INCF       _secondsOnes+0, 1
	BTFSC      STATUS+0, 2
	INCF       _secondsOnes+1, 1
;project_1.c,103 :: 		if(secondsOnes > 9) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _secondsOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main70
	MOVF       _secondsOnes+0, 0
	SUBLW      9
L__main70:
	BTFSC      STATUS+0, 0
	GOTO       L_main23
;project_1.c,104 :: 		secondsOnes = 0;
	CLRF       _secondsOnes+0
	CLRF       _secondsOnes+1
;project_1.c,105 :: 		secondsTens++;
	INCF       _secondsTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _secondsTens+1, 1
;project_1.c,106 :: 		if(secondsTens > 5) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _secondsTens+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVF       _secondsTens+0, 0
	SUBLW      5
L__main71:
	BTFSC      STATUS+0, 0
	GOTO       L_main24
;project_1.c,107 :: 		secondsTens = 0;
	CLRF       _secondsTens+0
	CLRF       _secondsTens+1
;project_1.c,109 :: 		minutesOnes++;
	INCF       _minutesOnes+0, 1
	BTFSC      STATUS+0, 2
	INCF       _minutesOnes+1, 1
;project_1.c,110 :: 		if(minutesOnes > 9) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _minutesOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main72
	MOVF       _minutesOnes+0, 0
	SUBLW      9
L__main72:
	BTFSC      STATUS+0, 0
	GOTO       L_main25
;project_1.c,111 :: 		minutesOnes = 0;
	CLRF       _minutesOnes+0
	CLRF       _minutesOnes+1
;project_1.c,112 :: 		minutesTens++;
	INCF       _minutesTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _minutesTens+1, 1
;project_1.c,113 :: 		if(minutesTens > 5) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _minutesTens+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main73
	MOVF       _minutesTens+0, 0
	SUBLW      5
L__main73:
	BTFSC      STATUS+0, 0
	GOTO       L_main26
;project_1.c,114 :: 		minutesTens = 0;
	CLRF       _minutesTens+0
	CLRF       _minutesTens+1
;project_1.c,116 :: 		hoursOnes++;
	INCF       _hoursOnes+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursOnes+1, 1
;project_1.c,117 :: 		if(format == 0) { // 12hr format
	MOVLW      0
	XORWF      _format+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVLW      0
	XORWF      _format+0, 0
L__main74:
	BTFSS      STATUS+0, 2
	GOTO       L_main27
;project_1.c,118 :: 		if(hoursTens == 0 && hoursOnes > 9) {
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVLW      0
	XORWF      _hoursTens+0, 0
L__main75:
	BTFSS      STATUS+0, 2
	GOTO       L_main30
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main76
	MOVF       _hoursOnes+0, 0
	SUBLW      9
L__main76:
	BTFSC      STATUS+0, 0
	GOTO       L_main30
L__main57:
;project_1.c,119 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1.c,120 :: 		hoursTens++;
	INCF       _hoursTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursTens+1, 1
;project_1.c,121 :: 		} else if(hoursTens == 1 && hoursOnes > 2) {
	GOTO       L_main31
L_main30:
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main77
	MOVLW      1
	XORWF      _hoursTens+0, 0
L__main77:
	BTFSS      STATUS+0, 2
	GOTO       L_main34
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main78
	MOVF       _hoursOnes+0, 0
	SUBLW      2
L__main78:
	BTFSC      STATUS+0, 0
	GOTO       L_main34
L__main56:
;project_1.c,122 :: 		hoursOnes = 1;
	MOVLW      1
	MOVWF      _hoursOnes+0
	MOVLW      0
	MOVWF      _hoursOnes+1
;project_1.c,123 :: 		hoursTens = 0;
	CLRF       _hoursTens+0
	CLRF       _hoursTens+1
;project_1.c,124 :: 		period = period ^ 1; //XOR operation to flip period between 1 and 0
	MOVLW      1
	XORWF      _period+0, 1
	MOVLW      0
	XORWF      _period+1, 1
;project_1.c,125 :: 		}
L_main34:
L_main31:
;project_1.c,126 :: 		} else { // 24hr format
	GOTO       L_main35
L_main27:
;project_1.c,127 :: 		if(hoursTens == 0 && hoursOnes > 9) {
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main79
	MOVLW      0
	XORWF      _hoursTens+0, 0
L__main79:
	BTFSS      STATUS+0, 2
	GOTO       L_main38
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main80
	MOVF       _hoursOnes+0, 0
	SUBLW      9
L__main80:
	BTFSC      STATUS+0, 0
	GOTO       L_main38
L__main55:
;project_1.c,128 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1.c,129 :: 		hoursTens++;
	INCF       _hoursTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursTens+1, 1
;project_1.c,130 :: 		} else if(hoursTens == 1 && hoursOnes == 2) {
	GOTO       L_main39
L_main38:
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main81
	MOVLW      1
	XORWF      _hoursTens+0, 0
L__main81:
	BTFSS      STATUS+0, 2
	GOTO       L_main42
	MOVLW      0
	XORWF      _hoursOnes+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	MOVLW      2
	XORWF      _hoursOnes+0, 0
L__main82:
	BTFSS      STATUS+0, 2
	GOTO       L_main42
L__main54:
;project_1.c,131 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1.c,132 :: 		period = 1;
	MOVLW      1
	MOVWF      _period+0
	MOVLW      0
	MOVWF      _period+1
;project_1.c,133 :: 		} else if(hoursTens == 1 && hoursOnes > 9) {
	GOTO       L_main43
L_main42:
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main83
	MOVLW      1
	XORWF      _hoursTens+0, 0
L__main83:
	BTFSS      STATUS+0, 2
	GOTO       L_main46
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main84
	MOVF       _hoursOnes+0, 0
	SUBLW      9
L__main84:
	BTFSC      STATUS+0, 0
	GOTO       L_main46
L__main53:
;project_1.c,134 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1.c,135 :: 		hoursTens++;
	INCF       _hoursTens+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hoursTens+1, 1
;project_1.c,136 :: 		} else if(hoursTens == 2 && hoursOnes > 3) {
	GOTO       L_main47
L_main46:
	MOVLW      0
	XORWF      _hoursTens+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main85
	MOVLW      2
	XORWF      _hoursTens+0, 0
L__main85:
	BTFSS      STATUS+0, 2
	GOTO       L_main50
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hoursOnes+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main86
	MOVF       _hoursOnes+0, 0
	SUBLW      3
L__main86:
	BTFSC      STATUS+0, 0
	GOTO       L_main50
L__main52:
;project_1.c,137 :: 		hoursOnes = 0;
	CLRF       _hoursOnes+0
	CLRF       _hoursOnes+1
;project_1.c,138 :: 		hoursTens = 0;
	CLRF       _hoursTens+0
	CLRF       _hoursTens+1
;project_1.c,139 :: 		period = 0;
	CLRF       _period+0
	CLRF       _period+1
;project_1.c,140 :: 		}
L_main50:
L_main47:
L_main43:
L_main39:
;project_1.c,141 :: 		}
L_main35:
;project_1.c,142 :: 		}
L_main26:
;project_1.c,143 :: 		}
L_main25:
;project_1.c,144 :: 		}
L_main24:
;project_1.c,145 :: 		}
L_main23:
;project_1.c,146 :: 		}
L_main22:
;project_1.c,147 :: 		}
L_main21:
;project_1.c,149 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;project_1.c,150 :: 		if(counter > maxCounter) {
	MOVLW      128
	XORWF      _maxCounter+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main87
	MOVF       _counter+0, 0
	SUBWF      _maxCounter+0, 0
L__main87:
	BTFSC      STATUS+0, 0
	GOTO       L_main51
;project_1.c,151 :: 		counter = 0;
	CLRF       _counter+0
	CLRF       _counter+1
;project_1.c,152 :: 		}
L_main51:
;project_1.c,153 :: 		display();
	CALL       _display+0
;project_1.c,154 :: 		}
	GOTO       L_main0
;project_1.c,155 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
