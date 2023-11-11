# Instructions

- [Data Transfer Instructions](#data-transfer-instructions)
	 - [MOV](#mov)

- [Arithmetic Instructions](#arithmetic-instructions)
    - ADD
    - SUB
    - MUL
    - DIV

- [Logical Instructions](#logical-instructions)
    - AND
    - OR
    - XOR
    - NOT

- [Control Transfer Instructions](#control-transfer-instructions)
    - JMP
    - JZ
    - JE

- [Comparison Instructions](#comparison-instructions)
    - CMP

- [Stack Instructions](#stack-instructions)
    - PUSH
    - POP


# <a name ="data-transfer-instructions"></a>Data Transfer Instructions

## <a name="mov"></a>MOV

**MOV (Move):**

- `MOV` is used to copy data from a source operand to a destination operand

``` assembly
MOV destination, source
```
`destination`: where the data will be copied
`source`: the data to be copied

- Various combinations of source and destination operands:

1. **Register-to-Register Transfer:**
```assembly
MOV AX, BX    ; Copy the contents of register BX to register AX
```

2. **Immediate-to-Register Transfer:**
```assembly
MOV CX, 1234  ; Copy the immediate value 1234 to register CX
```

3. **Memory-to-Register Transfer:**
```assembly
MOV AX, [SI]  ; Copy the contents of the memory location addressed by the SI register to register AX
```

4. **Register-to-Memory Transfer:**
```assembly 
MOV [DI], BX ; Copy the contents of register BX to the memory location addressed by the DI register 
```

5. **Immediate-to-Memory Transfer:**
```assembly
MOV [1234], AL ; Copy the contents of register AL to the memory location with address 1234
```

6. **Register-to-Segment Register Transfer:**
```assembly
MOV DS, AX    ; Copy the contents of register AX to the Data Segment (DS) register
```

# <a name ="arithmetic-instructions"></a>Arithmetic Instructions

<a name ="ADD"></a>**ADD (Addition):**
```assembly
ADD AX, BX  ; AX = AX + BX
```

**SUB (Subtraction):**
```assembly
SUB AX, BX  ; AX = AX - BX
```

**MUL (Multiply):**
```assembly
MUL BX      ; AX = AX * BX (unsigned multiplication)
```

**DIV (Divide):**
```assembly
DIV BX      ; AX = AX / BX (unsigned division)
```

# <a name ="logical-instructions"></a> Logical Instructions

**AND (Bitwise AND):**
```assembly
AND AX, BX  ; AX = AX AND BX
```

**OR (Bitwise OR):**
```assembly
OR AX, BX   ; AX = AX OR BX
```

**XOR (Bitwise XOR):**
```assembly
XOR AX, BX  ; AX = AX XOR BX
```

**NOT (Bitwise NOT):**
```assembly
NOT AX      ; AX = NOT AX
```

# <a name ="control-transfer-instructions"></a>Control Transfer Instructions

**JMP (Jump):**
```assembly
JMP Label   ; Unconditional jump to Label
```

**JZ (Jump if Zero):**
```assembly
JZ Label    ; Jump to Label if the Zero flag is set
```

**JE (Jump if Equal):**
```assembly
JE Label    ; Jump to Label if the Equal flag is set
```

# <a name = "comparison-instructions"></a> Comparison Instructions

**CMP (Compare):**
```assembly
CMP AX, BX  ; Compare AX and BX (affects flags but does not store the result)
```

# <a name = "stack-instructions"></a>Stack Instructions

**PUSH (Push onto Stack):**
```assembly
PUSH AX     ; Push the contents of AX onto the stack
```

**POP (Pop from Stack):**
```assembly
POP BX      ; Pop the top of the stack into BX
```
