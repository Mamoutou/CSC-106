; CSC 106 - Spring 2016
; Read two integers(the numbers can be either positive or negative) inputs and print them 
; and the product of the two numbers
; Author: B. Bird - 02/11/2016(Mamoutou Sangare V00010526)
 
         STRO    PROMPT, d   ; Ask for a number
         DECI    NUM1, d     ; Read the number into NUM1 
         STRO    PROMPT, d   ; Ask for another number
         DECI    NUM2, d     ; Read the second number into NUM2

         STRO    RECALL, d  ; Display 'Numbers Entered: ' 
         DECO    NUM1, d     ; Print NUM1 
         CHARO   ' ', i      ; Print a space
         DECO    NUM2, d     ; Print NUM2
         CHARO   '\n', i     ; End the line

         LDA NUM1,d
         CPA  0,i
         BRGE POSITIVE,i  ; NUM1 is positive(or 0) and NUM2 is positive or negative
         BRLT LOOP2,i     ; NUM1 is negative and NUM2 is positive (LOOP2 will branch to TWONEGA in case NUM2 is negative too)    
      
POSITIVE:LDA     0, i          
         STA     PRODUCT, d  ; Set the product to 0
         LDA     1, i
         STA     COUNTER, d  ; Set the counter to 1
         BR LOOP,i
         ; The lines below repeat until counter is equal to INPUT
LOOP:    LDA     COUNTER, d  ; Load the counter into A
         CPA     NUM1, d    ; Compare the value of the counter (which is stored in A) to the user's input value
         BRGT    DONE, i     ; If the counter was larger than the input value, jump to the DONE label
         LDA     PRODUCT, d  ; Load the current value of the product into A
         ADDA    NUM2, d      ; Add NUM2 to the current product
         STA     PRODUCT, d  ; Store the updated product back to memory
     LDA     COUNTER, d  ; Load the counter into A
         ADDA    1, i        ; Add 1 to the counter
         STA     COUNTER, d  ; Store the updated counter back to memory
         BR      LOOP, i     ; Jump back to the LOOP label

LOOP2:   LDA     COUNTER, d  ; Load the counter into A
         CPA     NUM2, d    ; Compare the value of the counter (which is stored in A) to the user's input value
         BREQ    DONE, i     ; If the counter was larger than the input value, jump to the DONE label
         BRGT    TWONEGA,i  ; two numbers are negative Jump to TWONEGA BRANCH
         LDA     PRODUCT, d  ; Load the current value of the product into A
         ADDA    NUM1, d      ; Add NUM1 to the current product
         STA     PRODUCT, d  ; Store the updated product back to memory
     LDA     COUNTER, d  ; Load the counter into A
         ADDA    1, i        ; Add 1 to the counter
         STA     COUNTER, d  ; Store the updated counter back to memory
         BR      LOOP2, i     ; Jump back to the LOOP2 label

TWONEGA: LDA    COUNTER, d  ; Load the counter into A
         CPA     NUM1, d    ; Compare the value of the counter (which is stored in A) to the user's input NUM1
         BREQ    DONE, i     ; If the counter was equal to the input value, jump to the DONE label
         LDA     PRODUCT, d  ; Load the current value of the product into A
         SUBA    NUM2, d      ; SUBSTRACT NUM2 to the current product
         STA     PRODUCT, d  ; Store the updated product back to memory
     LDA     COUNTER, d  ; Load the counter into A
         SUBA    1, i        ; Subtract 1 to the counter
         STA     COUNTER, d  ; Store the updated counter back to memory
         BR      TWONEGA, i     ; Jump back to the TWONEGA label


         ; When the DONE label is reached, the product has been fully computed
DONE:    STRO    ENDSTR, d   
         DECO    PRODUCT, d  ; Print the product
         CHARO   '\n', i     ; End the line
         STOP

PRODUCT: .WORD 0 ; Storage for the product 
COUNTER: .WORD 0 ; Storage for the counter
NUM1:    .WORD 0  ; Storage for the user's first input value
NUM2:    .WORD 0   ; Storage for the user's second input value
PROMPT:  .ASCII "Enter a number: \x00"
RECALL:  .ASCII "Numbers entered: \x00"
ENDSTR:  .ASCII "Product: \x00"
         .END