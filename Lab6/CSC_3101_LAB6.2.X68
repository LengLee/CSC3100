*-----------------------------------------------------------
* Title      : QUESTION 2 
* Written by : LENG LEE 
* Date       : 10/27/17
* Description: LAB 6 
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA     MESSAGE, A1 
    MOVE.B #14, D0 
    TRAP    #15 

    MOVE.B  #3, D0 
    MOVE.B  A, D1 
    ADD.B   B, D1 
    ADD.B   C, D1
    ADD.B   D, D1 

    TRAP #15 

CR EQU  $0D 
LF EQU $0A 



    SIMHALT             ; halt simulator

* Put variables and constants here

A DC.B 1
B DC.B 3
C DC.B 6 
D DC.B 9 

MESSAGE DC.B 'MY ACCESS ID IS FQ1369' , CR, LF 
        DC.B 'THE SUM ' ,0 
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
