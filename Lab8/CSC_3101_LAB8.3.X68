*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program


* Put program code here
    LEA MESSAGE1 , A1
    
    
    MOVE #13 , D0   *PROMPT STRING ENTER
    TRAP #15 
   
    MOVE #0 , A1 
    
    MOVE.B #2 , D0 * ENTER A STRING 
    TRAP #15
    
    MOVE.L (A1) , STRING 
    
     
    LEA MESSAGE2 , A1 
    MOVE #13 , D0   *OUTPUT SIZE
    TRAP #15  
    
    MOVE #3 , D0 *OUTPUT STRING SIZE 
    TRAP #15
    
*    MOVE #0 , A1
*    MOVE STRING , A1 
*    
*    MOVE #13 , D0 
*    TRAP #15
    
   

    

MESSAGE1 DC.B ' INPUT A STRING' , 0
MESSAGE2 DC.B ' THE SIZE OF THE STRING IS ' , 0

    SIMHALT             ; halt simulator

* Put variables and constants here
STRING DS.B '23' 

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
