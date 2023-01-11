*-----------------------------------------------------------
* Title      : part2.X68
* Written by : Ahmad Muselmani 
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    MOVE.B #9,D1
    LEA text, A1    ; print the text to address register A1
    MOVE #14,D0     ; convert 14 to hex value 'E' and place it in D0
    TRAP #15    ;intrapret value 15 to action 
    
    MOVE #3,D0
    TRAP #15

* Put program code here

    SIMHALT             ; halt simulator
    
text dc.b 'Data Register: ',0

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
