;Sum of the elements of an array (II)

DIM EQU 5

.MODEL small  

.STACK  

.DATA
    VETT DW 1, 2, 3, 4, 5
    RESULT DW ? 
    
.CODE
.STARTUP

    XOR AX, AX
    MOV CX, DIM ; array size now stored in CX
    XOR DI, DI 
    
    lab: 
        ADD AX, VETT[DI] ; add i-th element to AX
        ADD DI, 2 ; go to next element
        DEC CX
        JNZ lab ; jump if CX is not zero (determined by checking the zero flag)    
        MOV RESULT, AX ; otherwise, write the result   
        
.EXIT
END