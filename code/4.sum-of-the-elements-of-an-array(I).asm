;Sum of the elements of an array

.MODEL SMALL 

.STACK 

.DATA
    VETT DW 5, 7, 3, 4, 3
    RESULT DW ?   
    
.CODE
.STARTUP
    MOV AX, 0
    ADD AX, VETT
    ADD AX, VETT+2
    ADD AX, VETT+4
    ADD AX, VETT+6
    ADD AX, VETT+8
    MOV RESULT, AX
.EXIT
END