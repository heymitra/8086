# 8086

- a 16-bit microprocessor that was introduced by Intel
- has a complex instruction set computing (CISC) architecture
- **[Registers:](#registers)** The 8086 has several 16-bit registers, including AX, BX, CX, DX, SI, DI, SP, and BP.
- **Memory Addressing:** The 8086 can address up to 1 megabyte of memory. It uses a segmented memory model, where memory is divided into [segments](#Segments) and an offset within the segment is used to address specific locations.


## <a name="registers"></a>Registers

- small, fast storage locations within the CPU
- are used to hold temporary data and intermediate results during program execution
- the choice of registers depends on the specific requirements of the operation or instruction being executed

1. **General-Purpose Registers:**
	- **AX, BX, CX, DX**
2. **Index and Pointer Registers:**
	- **SI (Source Index), DI (Destination Index):** Used for string operations and memory data movement.
	- **BP (Base Pointer), SP (Stack Pointer):** BP is often used for accessing data in the stack, while SP is crucial for managing the stack.
3. **Segment Registers:**
	- **CS (Code Segment):** Points to the segment where the current program or code resides.
	- **DS (Data Segment):** Points to the segment where data is stored.
	- **SS (Stack Segment):** Points to the segment where the stack is located.
	- **ES (Extra Segment):** Additional data segment register used for certain instructions.
4. **Flag Register (FLAGS):**
	- Holds various status flags that reflect the results of arithmetic operations, control flow, and other CPU operations.



## <a name="segments"></a>Segments

- The 8086 microprocessor uses a segmented memory model, where the entire memory space is divided into segments.
- Each segment is 64 kilobytes in size.
- The combination of a segment and an offset within that segment forms a physical memory address.
- The segment-offset addressing scheme allows the 8086 to access a larger memory space than a 16-bit address alone would permit.

1. **Segment Registers:**
	As mentioned earlier, the CS, DS, SS, and ES registers in the 8086 are segment registers. They hold the base addresses of their respective segments.
	
2.  **Offset Registers:**
	When combined with a segment register, an offset register provides the specific location within a segment where data is stored or retrieved.
	
3. **Memory Address Calculation:**
	The actual memory address is calculated by multiplying the segment value by 16 and adding the offset value. This allows the 8086 to access a 20-bit physical address space, providing a theoretical maximum of 1 megabyte of memory.


# Assembly Language Addressing Modes
- [Immediate Addressing](#immediate-addressing)
- [Register Addressing](#register-addressing)
- [Memory Addressing](#memory-addressing)
- [Register Indirect Addressing](#register-indirect-addressing)
- [Base-Register Addressing](#base-register-addressing)
- [Indexed Addressing](#indexed-addressing)
- [Base-Plus-Index Addressing](#base-plus-index-addressing)
- [Relative Addressing (for Branch Instructions)](#relative-addressing-for-branch-instructions)

## <a name="immediate-addressing"></a>Immediate Addressing
In immediate addressing, the operand is a constant value specified in the instruction.
```assembly
MOV AX, 1234  ; Move the immediate value 1234 into register AX
```

## <a name="register-addressing"></a>Register Addressing
The operand is in a processor register.
```assembly
MOV BX, AX    ; Move the contents of register AX into register BX
```

## <a name="memory-addressing"></a>Memory Addressing
The operand is located in memory, and the effective address is calculated based on a register or an immediate offset.
```assembly
MOV AX, [SI]  ; Move the contents of the memory location addressed by the SI register into register AX
```
```assembly
MOV [DI], CX  ; Move the contents of register CX into the memory location addressed by the DI register
```

## <a name="register-indirect-addressing"></a>Register Indirect Addressing
The operand is in memory, and the address is stored in a register.
```assembly
MOV AX, [BX]  ; Move the contents of the memory location addressed by the contents of register BX into register AX
```

## <a name="base-register-addressing"></a>Base-Register Addressing
Similar to register indirect addressing but involves an offset.
```assembly
MOV AX, [BX + 2]  ; Move the contents of the memory location addressed by (BX + 2) into register AX
```

## <a name="indexed-addressing"></a>Indexed Addressing
Uses an index register to calculate the effective address.
```assembly
MOV AX, [SI + 4]  ; Move the contents of the memory location addressed by (SI + 4) into register AX
```

## <a name="base-plus-index-addressing"></a>Base-Plus-Index Addressing
Combines a base register and an index register with an optional offset.
```assembly
MOV AX, [BX + SI + 8]  ; Move the contents of the memory location addressed by (BX + SI + 8) into register AX
```

## <a name="relative-addressing-for-branch-instructions"></a>Relative Addressing (for Branch Instructions)
Used in branch instructions to specify a target address relative to the current instruction pointer.
```assembly
JMP short label   ; Jump to the instruction labeled 'label'
```

