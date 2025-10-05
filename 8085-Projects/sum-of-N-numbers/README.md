# Sum of N Numbers (8085 ALP)

## Description
This 8085 Assembly Language Program calculates the **sum of N one-byte numbers** stored consecutively in memory.  
- The count `N` is stored at memory location `F100H`.  
- The numbers are stored starting from `F101H`.  
- The 16-bit result is stored at memory locations `8000H` (high byte) and `8001H` (low byte).

---

## Key Concepts
- Loops and counters  
- Handling carry for multi-byte addition  
- Memory addressing and register usage  

---

## Registers Used
| Register | Purpose |
|----------|---------|
| A        | Low byte sum |
| D        | High byte sum (to store carry) |
| C        | Loop counter (stores N) |
| HL       | Pointer to memory location of numbers |

---

## Program Logic
1. Load `N` from `F100H` into register `C`.  
2. Initialize low byte sum `A` and high byte sum `D` to 0.  
3. Loop over each number:  
   - Add the number to `A`.  
   - If carry occurs, increment `D`.  
   - Move HL to the next memory location.  
4. Repeat until all `N` numbers are added.  
5. Store the result:  
   - Low byte → `8001H`  
   - High byte → `8000H`  

---

## Files
- `sum_of_N.asm` → Assembly source code  
- `sum_of_N.hex` → Optional machine code for simulation  

---

## Notes
- The program demonstrates **multi-byte addition using carry handling**.  
- Useful for understanding **loops, registers, and memory operations in 8085**.


