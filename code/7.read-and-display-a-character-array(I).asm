;Read and display a character array (one by one)

DIM EQU 5  

.MODEL small 
        
        
.STACK 

.DATA  
    CHARS DB DIM DUP(?) 
    
.CODE
.STARTUP 

    MOV CX, DIM ; set counter
    MOV DI, 0 ; set index for itterating array
    MOV AH, 1 ; set AH for reading 
    
    lab1: 
        INT 21H ; read a character to AL
        MOV CHARS[DI], AL ; store the character
        INC DI ; go to next element
        DEC CX ; update counter
        JNZ lab1 ; jump if zero flag is not zero
        
    MOV CX, DIM ; set counter
    MOV AH, 2 ; set AH for writing 
        
    lab2: 
        DEC DI ; go to next element
        MOV DL, CHARS[DI]
        INT 21H ; display the character
        DEC CX
        JNZ lab2  
        
.EXIT
END