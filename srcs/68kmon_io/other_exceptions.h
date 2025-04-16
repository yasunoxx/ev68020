*** other_exceptions.h -- Exception Vector Table for 680x0/CPU32
***
*
*       .text 0
*       .org 0
*
** #0: Initial Supervisor Stack Pointer
*       .long   0x00017FFF
** #1: Initial Program Counter
*       .long   start
*       *
***
** #2: Bus Error
        .long   EXCEPTION
** #3: Address Error
        .long   EXCEPTION
** #4: Illegal Instruction
        .long   EXCEPTION
** #5: Zero Division
        .long   EXCEPTION
** #6: CHK, CHK2 Instructions
        .long   EXCEPTION
** #7: cpTRAPcc, TRAPcc, TRAPV Instructions
        .long   EXCEPTION
** #8: Privilege Violation
        .long   EXCEPTION
***
** #9: Trace
        .long   EXCEPTION
** #10: Line 1010 Emulator
        .long   EXCEPTION
** #11: Line 1111 Emulator
        .long   EXCEPTION
** #12: Hardware Breakpoint
        .long   EXCEPTION
** #13: (Reserved for Coprocessor Protocol Violation)
        .long   0x0FFFFFFFF
** #14: Format Error
        .long   EXCEPTION
** #15: Uninitialized Interrupt
        .long   EXCEPTION
** #16-23: Unassigned, Reserved
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
** #24: Spourious Interrupt
        .long   EXCEPTION
***
** #25: Interrupt Autovector Level 1
        .long   EXCEPTION
** #26: Interrupt Autovector Level 2
        .long   EXCEPTION
** #27: Interrupt Autovector Level 3
        .long   EXCEPTION
** #28: Interrupt Autovector Level 4
        .long   EXCEPTION
** #29: Interrupt Autovector Level 5
        .long   EXCEPTION
** #30: Interrupt Autovector Level 6
        .long   EXCEPTION
** #31: Interrupt Autovector Level 7
        .long   EXCEPTION
***
** #32-47: Trap Instruction Vectors #0-15
        * #0-7
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        * #8-15
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
***
** #48-58: (Reserved for Coprocessor)
        * #48-54: FPCP
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        * #55: (Unasigned, Reserved)
        .long   0x0FFFFFFFF
        * #56-58: PMMU
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
** #59-63: (Unassigned, Reserved)
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
        .long   0x0FFFFFFFF
***
** #64-255: User Defined Vectors #0-191
        * #64-73
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #74-83
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #84-93
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #94-103
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #104-113
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #114-123
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #124-133
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #134-143
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #144-153
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #154-163
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #164-173
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #174-183
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #184-193
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #194-203
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #204-213
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #214-223
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #224-233
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #234-243
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #244-253
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF, 0x0FFFFFFFF
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
        * #254-255
        .long   0x0FFFFFFFF, 0x0FFFFFFFF
********************************************************************
*
* end of other_exceptions.h (C)1985-87, 2024, 2025 yasunoxx▼Julia
