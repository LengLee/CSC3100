*-----------------------------------------------------------
* Title      : LAB 8    
* Written by : LENG LEE 
* Date       : 11/06/17
* Description: QUESTION 1 
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    MOVE.B #4 , D0    *INPUTS INTEGER FROM KEYBOARD 
    TRAP #15
    
    
    CMP #12 , D1  *COMPARE IS D1 == 12 
    BGE IF       * IF BRANCH GREATER THAN OR EQUAL TO 12 GO TO IF

ELSE SUB #13 , D1 *SUBTRACT D1 - 13 
     MOVE #3 , D0 
     TRAP #15

IF  MULU #2 , D1  *MUTIPLY 2 * D1 
    ADD.B #4 , D1 * ADD 4 + D1  
    MOVE.B #3 , D0 * OUTPUTS D1 
    TRAP #15        *OUTPUTS D1 
     
 

    
    
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
