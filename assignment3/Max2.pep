; EnterNumbers.pep
; CSC 106 - Spring 2016
;
; Read two numbers from the user, then print the two numbers and the greater number.
;
; Author: B. Bird - 02/11/2016 (Mamoutou Sangare V00010526)

         STRO    PROMPT, d   ; Ask for a number
         DECI    NUM1, d     ; Read the number into NUM1
         STRO    PROMPT, d   ; Ask for another number
         DECI    NUM2, d     ; Read the second number into NUM2

         STRO    ENTERED, d  ; Display 'Numbers Entered: '
         DECO    NUM1, d     ; Print NUM1 
         CHARO   ' ', i      ; Print a space
         DECO    NUM2, d     ; Print NUM2
         CHARO   '\n', i     ; End the line
     
         LDA NUM1,d
         CPA NUM2,d
         BRGT A
         BRLT B
         BREQ C
         
      A: LDA NUM1,d
         STA MAX,d
         BR D
         
      B: LDA NUM2,d
         STA MAX,d
         BR D
   
      C: LDA NUM1,d
         STA MAX,d
         BR E 
            
      D: STRO    MAXSTR, d   ; Print 'MAX: ' 
         DECO    MAX, d      ; Print the value of Max
         CHARO   '\n', i     ; End the line                      
         BR FINISH           ; Jump to End the program

      E: STRO    EQUALSTR, d ; Print 'The two numbers are equal: '
         DECO    MAX, d      ; Print the value of the number
         CHARO   '\n', i     ; End the line
         BR FINISH           ;Jump to End the program
      FINISH:   STOP         ; End the program  
        
        
; Data section
NUM1:    .WORD 0
NUM2:    .WORD 0
MAX:     .WORD 0 
PROMPT:  .ASCII "Enter a number: \x00"
ENTERED: .ASCII "Numbers entered: \x00"
MAXSTR:  .ASCII "MAXIMUM: \x00"
EQUALSTR:.ASCII "The two numbers are equal and the number is: \x00"
         .END

