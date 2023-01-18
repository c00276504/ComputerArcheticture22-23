*-----------------------------------------------------------
* Title      : part2.X68
* Written by : Ahmad Muselmani 
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    MOVE.B #9,D1    ; move 8 bit litteral number 9 into D1
    LEA text, A1    ; print the text to address register A1
    MOVE #14,D0     ; convert 14 to hex value 'E' and place it in D0 to be intrapret to action
    TRAP #15    ;intrapret value 15 to action ; trap #15 is used for input output and display
    
    MOVE #3,D0 ; move 8 bit litteral number 3 into D0 and display the number of D1 into screen 
    TRAP #15

* Put program code here

    SIMHALT             ; halt simulator
    
text dc.b 'Data Register: ',0   ; convert to ascii code to place it next into A1

* Put variables and constants here

    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
