DIM EQU 10

.MODEL small
        
.STACK 

.DATA  
    BUFFER   DB DIM, ?, 10 DUP(' ')
    
.CODE
.STARTUP 
    
    LEA DX, BUFFER ; indicate address of buffer array
    MOV AH, 0Ah    ; set AH for reading 
    INT 21h        ; read a character to buffer

    XOR BX, BX             
    MOV BL, BUFFER[1]     ; indicate how many chars have been entered
    MOV BUFFER[BX+2], '$' ; set last element of buffer to $
    LEA DX, BUFFER+2
    MOV AH, 9
    INT 21H

.EXIT
END
