*-----------------------------------------------------------
* Title      : part3.X68
* Written by :  Ahmad Muselmani
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    LEA text, A1    ; load the content of the text into Address regester A1
    MOVE #4,D0      ; move 8 bit litteral number 9 into D0
    TRAP #15        ;read a number from keyboard and store it into data register D1
    MOVE #14,D0     ; #14 that converted to hex and updated into D0 is intreuction to display the string that in A1  
    TRAP #15        ; trap instructor output the text 
    MOVE #3,D0      ; display the signed number of D1  
    TRAP #15        ;instruct to place output the number outputed beside the text 

* Put program code here

    SIMHALT             ; halt simulator
text dc.b 'Data Register: ',0

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
