*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
 LEA MESSAGE , A1 
   MOVE.B #14 , D0 
   TRAP #15 
   
   LEA MESSAGE2 , A1 
   MOVE.B #14 , D0 
   TRAP #15 
   
   MOVE.B #1 , D1
   ADD.B #3 , D1
   ADD.B #6 , D1
   ADD.B #9 , D1 
   
  
   MOVE #3, D0
   TRAP #15 

    
   
    SIMHALT             ; halt simulator


* Put variables and constants here
MESSAGE DC.B 'MY ACCESS ID IS FQ1369' 
MESSAGE2 DC.B ' THE SUM IS ' , 0
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
