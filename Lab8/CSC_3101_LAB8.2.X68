*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA MESSAGE, A1

    MOVE.B #0, D1 * X 
    MOVE.B #1 , D2 * Y
    

     
WHILE DIVS #2, D1 
    BEQ IF * DO IF STATEMENT IF ITS EQUAL 
ELSE 
    ADD #1 , D2
    BRA X
          
IF MULS D1,D2 

X    ADD.B #1 , D1 
    
    CMP #10 , D1
    BNE WHILE *WHILE LOOP IF ITS NOT EQUAL TO 0
    
    MOVE #14 , D0 
    TRAP #15
    
    CLR.L D1 
    MOVE.B D2 ,D1
    
    MOVE #3 , D0
    TRAP #15
    
    
MESSAGE DC.B 'Y IS : ' , 0 

    
    
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
