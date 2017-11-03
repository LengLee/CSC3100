*-----------------------------------------------------------
* Title      : HELLO WORLD  
* Written by : LENG LEE 
* Date       : 10/27/17 
* Description: LAB 6 
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA MESSAGE , A1
    MOVE.L #14, D0 
    TRAP #15  
    
    MOVE.L #9 , D0 
    TRAP #15 
   
CR EQU $0D 
LF EQU $0A 

MESSAGE DC.B ' HELLO ' , CR , LF 
        DC.B ' WORLD ' , 0  


    SIMHALT             ; halt simulator

* Put variables and constants here


    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
