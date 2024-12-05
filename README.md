# Uncommon Assembly Bug: Memory Access Violation

This repository demonstrates a common yet subtle error in assembly programming: memory access violations.  The code lacks bounds checking, making it vulnerable to buffer overflows and data corruption.  The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version with proper boundary checks.  The example highlights the importance of robust memory management in low-level programming.

## Bug Description

The bug lies in accessing memory locations outside the allocated space of an array. This can lead to unpredictable behavior, crashes, or security vulnerabilities.  Specifically:

1. **`mov eax, [ebx + ecx*4 + 0x10]`**: This instruction reads data from memory. If `ecx` is too large, it could try accessing memory beyond the array bounds.
2. **`mov [edi + esi*2], ax`**:  This writes data to memory. If `esi` is too large, it could overwrite memory outside the allocated region.

## Solution

The solution involves adding explicit bounds checks before accessing memory locations. The `bugSolution.asm` demonstrates how to perform these checks and handle potential out-of-bounds conditions safely.  This prevents crashes and data corruption.