*-----------------------------------------------------------
* Title      : 
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

  LEA ARRAY , A2 
  
  LEA PROMPT , A1 
  MOVE.B #13 , D0 
  TRAP #15 
  
  MOVE.B #4 , D0  
  TRAP #15 
  MOVE.B D1, D2 
    
  LEA PROMPT2 , A1
  MOVE.B #13 , D0 
  TRAP #15
  
  MOVE.B #4 , D0 
  TRAP #15 
  MOVE.B D1, D3 
 
  DIVU D3 , D2 
  SWAP D2 
  
  
  MOVE.W D2 ,D1
   
  
  MOVE.B 2(A2) , D1 
  MOVE #3 , D0 
  TRAP #15


      
PROMPT DC.L 'INPUT THE SIZE OF THE ARRAY' , 0 , 0
PROMPT2 DC.L ' INPUT THE INDEX TO DISPLAY' , 0

    SIMHALT             ; halt simulator

* Put variables and constants here
    ORG $2000 
ARRAY DC.B 2,3,8,1,6,5,4 


    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
