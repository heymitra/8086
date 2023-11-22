# Instructions

**1. [Data Transfer Instructions](#data_transfer-instructions):**  [MOV](#MOV), [LEA](#lea)

**2. [Arithmetic Instructions](#arithmetic_instructions):** [ADD](#add), [SUB](#sub), [MUL](#mul), [DIV](#div)

**3. [Logical Instructions](#logical-instructions):** [AND](#and), [OR](#or), [XOR](#xor), [NOT](#not)

**4. [Control Transfer Instructions](#control-transfer-instructions):** [JMP](#jmp), [JZ](#jz), [JE](#je), JNZ, JNE, ...

**5. [Comparison Instructions](#comparison-instructions):** [CMP](#cmp)

**6. [Stack Instructions](#stack-instructions):** [PUSH](#push), [POP](#pop)


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

## <a name="lea"></a>LEA

**LEA (Load Effective Address):**
- Its primary purpose is to calculate an effective memory address and load it into a register without actually accessing the memory.
- It calculates the effective address specified by the source operand and loads it into the destination operand, typically a register.
- The `LEA` instruction is primarily designed for use with 16-bit addresses.

```assembly
LEA destination, source
```
- **Destination Operand:** It must be a 16-bit general-purpose register. Common choices include AX, BX, CX, DX, SI, DI, BP, or SP.
- **Source Operand:** It can be a memory operand or a register operand. The source operand can involve various addressing modes, allowing for flexibility in address calculations.
Here are some examples:

```assembly
LEA AX, [BX + SI] ; Calculate the effective address [BX + SI] and load it into AX 
LEA SI, [BX + 2] ; Calculate the effective address [BX + 2] and load it into SI 
LEA DI, [1234] ; Load the immediate value 1234 into DI (DI is used as a destination for a constant) 
LEA DX, [SI + DI + 4] ; Calculate the effective address [SI + DI + 4] and load it into DX
```
In these examples, the destination operand is always a 16-bit general-purpose register, and the source operand involves effective address computations using different addressing modes.

<blockquote style="background-color: #3498db; color: #ffffff; padding: 10px; border-radius: 5px; margin: 0;">
    <p><strong>LEA VS OFFSET</strong></p>
    <pre><code>LEA BX, VARB
MOV BX, OFFSET VARB</code></pre>
    <p>While these two code snippets have the same functionality, `OFFSET` cannot always serve as an alternative for `LEA`:</p>
    <pre><code>LEA BX, ARR[SI]
MOV BX, OFFSET ARR[SI]</code></pre>
    <p>In this scenario, <code>MOV BX, OFFSET ARR[SI]</code> doesn't provide the same functionality. Instead, to achieve the equivalent result, use:</p>
    <pre><code>MOV BX, OFFSET ARR 
ADD BX, SI</code></pre>
    <p><strong>Key Differences:</strong></p>
    <ul>
        <li><strong>Calculation Approach:</strong>
            <ul>
                <li><code>LEA</code> directly calculates the effective address in a single instruction.</li>
                <li><code>MOV BX, OFFSET ARR; ADD BX, SI</code> involves two instructions: one to load the static offset and another to perform dynamic indexing.</li>
            </ul>
        </li>
        <li><strong>Dynamic vs. Static:</strong>
            <ul>
                <li><code>LEA</code> performs a dynamic calculation based on the content of <code>SI</code> at runtime.</li>
                <li><code>MOV BX, OFFSET ARR</code> is a static operation during assembly time, and <code>ADD BX, SI</code> introduces a dynamic component.</li>
            </ul>
        </li>
    </ul>
</blockquote>


# <a name ="arithmetic-instructions"></a>Arithmetic Instructions

<a name ="add"></a>**ADD (Addition):**
```assembly
ADD AX, BX  ; AX = AX + BX
```

<a name ="sub"></a>**SUB (Subtraction):**
```assembly
SUB AX, BX  ; AX = AX - BX
```

<a name ="mul"></a>**MUL (Multiply):**
```assembly
MUL BX      ; AX = AX * BX (unsigned multiplication)
```

<a name ="div"></a>**DIV (Divide):**
```assembly
DIV BX      ; AX = AX / BX (unsigned division)
```

# <a name ="logical-instructions"></a> Logical Instructions

<a name ="and"></a>**AND (Bitwise AND):**
```assembly
AND AX, BX  ; AX = AX AND BX
```

<a name ="or"></a>**OR (Bitwise OR):**
```assembly
OR AX, BX   ; AX = AX OR BX
```

<a name ="xor"></a>**XOR (Bitwise XOR):**
```assembly
XOR AX, BX  ; AX = AX XOR BX
```

<a name ="not"></a>**NOT (Bitwise NOT):**
```assembly
NOT AX      ; AX = NOT AX
```

# <a name ="control-transfer-instructions"></a>Control Transfer Instructions

<a name ="jmp"></a>**JMP (Jump):**
```assembly
JMP Label   ; Unconditional jump to Label
```

<a name ="jz"></a>**JZ (Jump if Zero):**
```assembly
JZ Label    ; Jump to Label if the Zero flag is set
```

<a name ="je"></a>**JE (Jump if Equal):**
```assembly
JE Label    ; Jump to Label if the Equal flag is set
```

# <a name = "comparison-instructions"></a> Comparison Instructions

<a name ="cmp"></a>**CMP (Compare):**
```assembly
CMP AX, BX  ; Compare AX and BX (affects flags but does not store the result)
```

# <a name = "stack-instructions"></a>Stack Instructions

<a name ="push"></a>**PUSH (Push onto Stack):**
```assembly
PUSH AX     ; Push the contents of AX onto the stack
```

<a name ="pop"></a>**POP (Pop from Stack):**
```assembly
POP BX      ; Pop the top of the stack into BX
```
