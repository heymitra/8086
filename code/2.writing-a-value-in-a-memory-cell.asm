;Writing a value in a memory cell

.MODEL small

.STACK 

.DATA  
    VAR DW ? 
    
.CODE
.STARTUP
    MOV VAR, 1h
.EXIT
END