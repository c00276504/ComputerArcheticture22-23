*-----------------------------------------------------------
* Title      : part3.X68
* Written by :  Ahmad Muselmani
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    LEA     HEALTH, A1
    MOVE    #14, D0
    TRAP    #15 
    
    MOVE.L  #100, $10
    LEA     $10, A2
    MOVE.L  (A2),D1
    SUB.L   #90, D1
    MOVE.B  #3, D0
    TRAP #15

    LEA     Add_POINTS, A1
    MOVE    #14, D0
    TRAP    #15           
    
    MOVE.W  #0, $5000
    LEA     $5000, A2
    MOVE.W  (A2),D2
    ADD.W   #5, D2
    MOVE.W  D2, D1
    MOVE.B  #3, D0
    TRAP #15

    
    LEA     Sub_POINTS, A1
    MOVE    #14, D0
    TRAP    #15           
    
    MOVE.W  #0, $5000
    LEA     $5000, A2
    MOVE.W  (A2),D2
    sub.W   #5, D1
    MOVE.W  D2, D1
    MOVE.B  #3, D0
    TRAP #15
    
    LEA     Mulu_POINTS, A1
    MOVE    #14, D0
    TRAP    #15           
    
    MOVE.W  #0, $5000
    LEA     $5000, A2
    MOVE.W  (A2),D2
    ADD.W   #5, D2
    MOVE.W  D2, D1
    mulu.W   D2, D1
    MOVE.B  #3, D0
    TRAP #15





* Put program code here

    SIMHALT             ; halt simulator
HEALTH DC.B 'Players Health : ', 0
Add_POINTS DC.B ' Points : ', 0 
Sub_POINTS DC.B ' Points : ', 0
Mulu_POINTS DC.B ' Points : ', 0  
* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
