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
    MOVE #13 , D0        *DISPLAYS MESSAGE1 
    TRAP #15
    
    BSR FIRST
X    BSR SECOND 
F    BSR THIRD

FIRST    MOVE #10 , D2
         LEA ARRAY , A2
INPUTS   MOVE #4 , D0     *ENTER INPUTS
         TRAP #15 
         MOVE.B D1 , (A2)+     *MOVE INPUTS TO ARRAY
         SUB #1 , D2 
         BNE INPUTS     *BRANCH IF D2 != 0
         
    LEA MESSAGE2 , A1 
    MOVE #13, D0 
    TRAP #15
    
       MOVE #4 , D0    *ENTER 1 OR 2
       TRAP #15 
INT    CMP #3 , D1  *CMP D1 , 2 
       BGE INT2     *BRANCH IF D1 >= 2 
       BRA X        * BRANCH TO X 
       
INT2 LEA MESSAGE3 , A1 
    MOVE #13 , D0 
    TRAP #15
    MOVE #4 , D0       *ENTER 1 OR 2
    TRAP #15 
    CMP #2 , D1         *CMP D1 AND 2
    BGT  INT            * BRANCH IF D1 > 2 
    CMP #1 , D1         * CMP D1 AND 1
    BLT INT             *BRANCH IF D1 < 1
    


SECOND  MOVE #10 , D3
        CMP #1 ,D1   *CHECK IF ITS ODD OR EVEN
        BEQ ODD
        
       CMP #2 , D1 
       BEQ EVEN    

ODD     CLR.L D1
        CLR.L D2 
        MOVE.B -(A2) , D2
        MOVE D2 , D1 
        DIVU #2 , D1 
        SWAP D1 
        CMP.B #1 , D1
        BEQ PRINTODD
        BNE C
       
PRINTODD   
        MOVE.L D2, D1
        CLR D2 
        MOVE D1 , D2 
        DIVU #2 , D2 
        CMP.B #1 , D2 
        BRA B
        
B       MOVE #3 , D0 
        TRAP #15 
C       SUB #1 , D3 
        BNE ODD
        BRA F
        

EVEN    CLR.L D2
        CLR.L D1 
        MOVE.B -(A2) , D2
        MOVE D2 , D1 
        DIVU #2 , D1 
        SWAP D1
        CMP.B #0 , D1
        BEQ PRINTEVEN
        BNE E
       
PRINTEVEN   
        MOVE.L D2, D1
        CLR D2 
        MOVE D1 , D2 
        DIVU #2 , D2 
        CMP.B #0 , D2 
        BRA D
        
D       MOVE #3 , D0 
        TRAP #15 
E       SUB #1 , D3 
        BNE EVEN
        BRA F
        

      
THIRD LEA SPACE , A1 
      MOVE #13 , D0 
      TRAP #15
      LEA MESSAGE6 , A1
      MOVE #13 , D0 
      TRAP #15 


MESSAGE1 DC.B 'ENTER 10 INTEGERS' , 0
MESSAGE2 DC.B ' ENTER 1 FOR ODD , 2 FOR EVEN' , 0 
MESSAGE3 DC.B 'INVALID , MUST ENTER 1 OR 2' , 0
MESSAGE4 DC.B 'ODD NUMBERS ARE ' , 0
MESSAGE5 DC.B 'EVEN NUMBERS ARE ' , 0
MESSAGE6 DC.B 'SORTED ARRAY : ' , 0 
SPACE DC.B '    ' , 0
    SIMHALT             ; halt simulator

* Put variables and constants here
ARRAY DS.L 10 
SORTED DS.L 10

    
    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
