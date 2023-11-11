;Sum of the elements of an array (using loop)         

DIM EQU 5

.MODEL small
.STACK
.DATA
    VETT DW 1, 2, 3, 4, 5
    RESULT DW 0

.CODE
.STARTUP
    XOR SI, SI
    XOR AX, AX
    MOV CX, DIM
    
    lab:
        ADD AX, VETT[SI] 
        ADD SI, 2
        Loop lab
        
    MOV RESULT, AX
    
.Exit
END