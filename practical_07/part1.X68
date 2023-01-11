*-----------------------------------------------------------
* Title      : part1.X68
* Written by : Ahmad Muselmani
* Date       : 
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    Move.B  #9,D1   ;put 8 bits hex digit 9 in Data register D1
    Move.B  D1,D2   ;move 8 bits hex digit 9 from Data register D1 and paste it in  Data register D2
    Move.B  D1,1100 ;move 8 bits hex digit 9 from Data register D1 and paste it in  memory location 1100 which is 440 in memory address
    Move.B  1100,D2 ;move 8 bits hex digit 9 from memory location $1100 which is 440 in memory address and paste it in  Data register D2
    Move.B  1100,100 ;move 8 bits hex digit 9 from memory location $1100 which is 440 in memory address  and paste it in memory location $100 which is 60 in memory location
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
