* 68kmon_io.asm.s -- 68k board monitor
* original source: "I/O" Mar.1985 page 207-210
*
* fit for GNU as(binutils-2.25), refine & commentary by yasunoxx▼Julia 2025
*

**
* con: Console(6850)
        .equ    concr, 0xFFE001
        .equ    condr, 0xFFE003
* axu: AUX serial(6850)
        .equ    axucr, 0xFFE000
        .equ    axudr, 0xFFE002
* fds: FDD select, DIPSW(6821)
        .equ    fdsdr, 0xFFD001
        .equ    fdscr, 0xFFD003
* list: Printer(6821)
        .equ    listdr, 0xFFD005
        .equ    listcr, 0xFFD007
* fdc: FDC(uPD765A)
        .equ    fdcsts, 0xFFC001
        .equ    fdcdat, 0xFFC003

*
**
*
        .text 0
*        .org 0
*
** Initial Supervisor Stack Pointer
        .long    0x00017FFF
** Initial Program Counter
        .long    start  /* on crt0.S */
*
** other Exception vectors here
*
        .include "other_exceptions.h"
        * if use other_exceptions.h, you must define "EXCEPTION" .

** running on Supervisor mode
        .text 1
*        .org     0x400
*       ^ here .org is "-Ttext" + 0x400
*       * original circuit(0xFF0000 to 0xFF7FFF)
*
        .global main
main:
* check DIPSW, jump to "ipl", if bit6 is set('L')
        bsr     sysint
        btst    #0x06, fdsdr
        beq     ipl
*
** monitor main routine
mnt:    bsr     crout
        movea.l #mc68, %a0
        bsr     msg
*        movea.l #0x00020000, %a7
        movea.l #0x00017FFF, %a7
        * ^ ??? re-set SSP
mnt1:   bsr     crout
        move.b  #'>', %d1
        bsr     conout
        bsr     incha
        bsr     cmd
        bra     mnt1
*
cmd:    cmp.b   #'D', %d0
        beq     dump
        cmp.b   #'S', %d0
        beq     set
        cmp.b   #'G', %d0
        beq     go
        cmp.b   #'W', %d0
        beq     mwrite
        cmp.b   #'R', %d0
        beq     mread
        cmp.b   #'C', %d0
        beq     conv
        cmp.b   #'B', %d0
        beq     block
        cmp.b   #'?', %d0
        bsr     conout
        rts
*
dump:   bsr     adrinp
        moveq   #8, %d2
dump1:  move.b  #16, %d3
        bsr     adrout
dump2:  move.b  (%a0)+, %d1
        bsr     bytout
        subq.b  #1, %d3
        bne     dump2
        subq.b  #1, %d2
        bne     dump1
        rts
*
set:    bsr     adrinp
set1:   bsr     adrout
        move.b  (%a0), %d1
        bsr     bytout
        bsr     incha
        cmp.b   #0x0D, %d0
        bne     set2
        adda.l  #1, %a0
        bra     set1
set2:   cmp.b   #'-', %d0
        bne     set3
        suba.l  #1, %a0
        bra     set1
set3:   cmp.b   #'.', %d0
        bne     set4
        rts
set4:   cmp.b   #' ', %d0
        bne     set1
        bsr     inb
        move.b  %d0, (%a0)+
        bra     set1
*
go:     bsr     adrinp
        jmp     (%a0)
*
mread:  bsr     dskope
        bsr     read
        bne     error
        rts
*
mwrite: bsr     dskope
        bsr     write
        bne     error
        rts
*
dskope: bsr     adrinp
        move.l  %a0, dma
        movea.l #drive, %a0
        bsr     msg
        bsr     inb
        move.b  %d0, disk
        bsr     spcfy
        bsr     rdyck
        movea.l #track, %a0
        bsr     msg
        bsr     inb
        move.b  %d0, trk
        movea.l #secter, %a0
        bsr     msg
        bsr     inb
        move.b  %d0, sec
        rts
*
error:  movea.l #err, %a0
        bsr     msg
        rts
*
block:  bsr     adrinp
        * ^ address
        move.l  %a0, dma
        movea.l #drive, %a0
        bsr     msg
        bsr     inb
        * ^ "00" or "01"
        move.b  %d0, disk
        * ^ #0 or #1
        bsr     spcfy
        * ^ command to FDC
        bsr     rdyck
        * ^ wait FDD ready
        movea.l #fr, %a0
        bsr     msg
        bsr     inb
        * ^ "00" to "F2"
        bsr     change
        * ^ ??? d0 = ( d0 << 3 ) / 26, %d1 = d0 + 2, swap d0(%d0 is modulo)
        move.b  %d0, %d2
        move.b  %d1, %d3
        movea.l #to, %a0
        bsr     msg
        bsr     inb
        * ^ "00" to "F2"
        addq.b  #1, %d0
        bsr     change
        movea.l #xlt, %a0
        subi.l  #128, dma
        * ^ DMA start address + 0(here -128 & next +128)
block1: addi.l  #128, dma
        move.b  %d3, trk
        ext.l   %d2
        move.b  (%a0, %d2), sec
*
        movem.l %d0-%d3/%a0, -(%a7)
        bsr     read
        movem.l (%a7)+, %d0-%d3/%a0
        cmp.b   %d2, %d0
        bne     block2
        cmp.b   %d3, %d1
        bne     block2
        rts
block2: addq.b  #1, %d2
        cmp.b   #25, %d2
        bls     block1
        moveq   #0, %d2
        addq.b  #1, %d3
        bra     block1
*
change: and.l   #0xFF, %d0
        lsl.l   #3, %d0
        divu    #26, %d0
        move.w  %d0, %d1
        addq.b  #2, %d1
        swap    %d0
        rts
*
conv:   bsr     adrinp
conv1:  move.b  (%a0)+, %d0
        cmp.b   #'S', %d0
        bne     conv1
        bsr     nbl
        move.b  %d0, %d6
        beq     conv1
        cmp.b   #3, %d6
        bhi     cnvret
conv2:  moveq   #0, %d4
        bsr     byte
        move.b  %d1, %d3
        addq.b  #1, %d6
        sub.b   %d6, %d3
        subq.b  #1, %d3
        moveq   #0, %d5
conv3:  bsr     byte
        lsl.l   #8, %d5
        or.b    %d1, %d5
        subq.b  #1, %d6
        bne     conv3
        movea.l %d5, %a1
conv4:  bsr     byte
        move.b  %d1, (%a1)+
        subq.b  #1, %d3
        bne     conv4
        bsr     byte
        addq.b  #1, %d4
        beq     conv1
        move.l  %a0, %d1
        movea.l #err, %a0
        bsr     msg
        bsr     out1
cnvret: rts
*
nbl:    move.b  (%a0)+, %d0
        cmp.b   #'9', %d0
        bls     nbl1
        sub.b   #0x07, %d0
nbl1:   sub.b   #'0', %d0
        rts
*
byte:   bsr     nbl
        move.b  %d0, %d1
        lsl.b   #4, %d1
        bsr     nbl
        or.b    %d0, %d1
        add.b   %d1, %d4
        rts
*
inb:    move.l  %d1, -(%a7)
        bsr     inh
        asl.b   #4, %d0
        move.b  %d0, %d1
        bsr     inh
        or.b    %d1, %d0
        move.l  (%a7)+, %d1
        rts
*
inh:    bsr     incha
        sub.b   #'0', %d0
        bcs     inh
        cmp.b   #10, %d0
        bcs     inhret
        sub.b   #7, %d0
        cmp.b   #0x10, %d0
        bcc     inh
inhret: rts
*
inw:    move.l  %d1, -(%a7)
        bsr     inb
        asl.w   #8, %d0
        move.w  %d1, %d1
        bsr     inb
        or.w    %d1, %d0
        move.l  (%a7)+, %d1
        rts
*
inl:    move.l  %d1, -(%a7)
        bsr     inw
        asl.l   #8, %d0
        asl.l   #8, %d0
        move.l  %d1, %d1
        bsr     inw
        or.l    %d1, %d0
        move.l  (%a7)+, %d1
        rts
*
adrinp: movea.l #addr, %a0
        bsr     msg
        bsr     inl
        movea.l %d0, %a0
        rts
*
incha:  bsr     conin
        cmp.b   #0x03, %d0
        beq     mnt
        move.l  %d1, -(%a7)
        move.b  %d0, %d1
        bsr     conout
        move.l  (%a7)+, %d1
        rts
*
msg:    move.l  %d1, -(%a7)
        bsr     crout
msg1:   move.b  (%a0)+, %d1
        beq     msgret
        bsr     conout
        bra     msg1
msgret: move.l  (%a7)+, %d1
        rts
*
out1:
        movem.l %d0-%d1, -(%a7)
        move.w  %d1, %d0
        swap    %d1
        bsr     outw
        move.w  %d0, %d1
        bsr     outw
        movem.l (%a7)+, %d0-%d1
        rts
*
outw:
        movem.l %d0-%d1, -(%a7)
        move.w  %d1, %d0
        lsr.w   #8, %d1
        bsr     outb
        move.w  %d0, %d1
        bsr     outb
        movem.l (%a7)+, %d0-%d1
        rts
*
outb:
        movem.l %d0-%d1, -(%a7)
        move.b  %d1, %d0
        lsr.b   #4, %d1
        bsr     outasc
        move.b  %d0, %d1
        bsr     outasc
        movem.l (%a7)+, %d0-%d1
        rts
*
outasc: and.b   #0x0F, %d1
        cmp.b   #10, %d1
        bcs     outac1
        add.b   #7, %d1
outac1: add.b   #'0', %d1
        bsr     conout
        rts
*
crout:  move.b  #0x0D, %d1
        bsr     conout
        move.b  #0x0A, %d1
        bsr     conout
        rts
*
adrout: bsr     crout
        move.l  %a0, %d1
        bsr     out1
spout:  move.b  #' ', %d1
        bsr     conout
        rts
*
bytout: bsr     outb
        bra     spout
*
        .global init
init:
sysint: lea     rmfm, %a0
        lea     mfm, %a1
        move.b  #45, %d0
sysin1: move.w  (%a0)+, (%a1)+
        subq.b  #1, %d0
        bne     sysin1
*
        bsr     conint
        bsr     cls
        rts
*
ipl:    bsr     spcfy
        bsr     rdyck
        bsr     intdsk
        movea.l dma, %a0
        move.b  #1, %d0
        move.b  #0, %d1
        subi.l  #128, dma
ipl1:   addi.l  #128, dma
        move.b  %d0, sec
        move.b  %d1, trk
        movem.l %d0/%d1/%a0, -(%a7)
        bsr     read
        movem.l (%a7)+, %d0/%d1/%a0
        addq.b  #1, %d0
        cmp.b   #0x1A, %d0
        bne     ipl1
        move.b  #0, %d0
        addq.b  #1, %d1
        cmp.b   #2, %d1
        bne     ipl1
        jmp     (%a0)
*
conint: move.b  #0x43, concr
        move.b  #0x11, concr
*
axuint: move.b  #0x43, axucr
        move.b  #0x11, axucr
*
fdsint: move.b  #0x00, fdscr
        move.b  #0x0F, fdscr
        move.b  #0x36, fdscr
        move.b  #0x01, fdscr
*
lstint: move.b  #0x00, listcr
        move.b  #0xFF, listcr
        move.b  #0x2C, listcr
        move.b  #0x18, listcr
        rts
*
spcfy:  lea     cmdbuf, %a0
        move.b  #0x03, (%a0)+
        move.b  #0xDF, (%a0)+
        move.b  #0x19, (%a0)+
        moveq   #0x3, %d1
        bsr     cmdout
        rts
*
rdyck:  bsr     snsds
        btst    #0x05, rstbuf
        beq     rdyck
        rts
*
snsds:  lea     cmdbuf, %a0
        move.b  #0x04, (%a0)+
        move.b  disk, (%a0)+
        moveq   #2, %d1
        bsr     cmdout
        bsr     rdrs
        rts
*
intdsk: move.b  #1, disk
        bsr     recmd
        move.b  #0, disk
        bsr     recmd
        rts
*
conin:  btst    #0x00, concr
        beq     conin
        clr.w   %d0
        move.b  condr, %d0
        rts
*
conout: btst    #0x01, concr
        beq     conout
        move.b  %d1, condr
        rts
*
lstout: btst    #0x07, listcr
        beq     lstout
        cmp.b   listdr, %d0
        move.b  %d1, listdr
        rts
*
cls:    move.b  #0x1B, %d1
        bsr     conout
        move.b  #'*', %d1
        bsr     conout
        rts
*
seek:   bsr     skcmd
        beq     sgret
        bsr     recmd
        bsr     skcmd
sgret:  rts
*
skcmd:  lea     cmdbuf, %a0
        move.b  #0x0F, (%a0)+
        move.b  disk, (%a0)+
        move.b  trk, (%a0)+
        moveq   #0x03, %d1
skcmd1: bsr     cmdout
wait:   btst    #0x07, fdsdr
        beq     wait
        move.b  #0x08, fdcdat
        bsr     rdrs
        rts
*
recmd:  lea     cmdbuf, %a0
        move.b  #0x07, (%a0)+
        move.b  disk, %d0
        andi.b  #0x03, %d0
        move.b  %d0, (%a0)+
        moveq   #0x2, %d1
        bra     skcmd1
*
rwsub:  move.w  #0x03FF, %d2
        moveq   #0x03, %d0
        sub.b   len, %d0
        asr.w   %d0, %d2
        moveq   #0x07, %d3
        lea     fdcsts, %a4
        lea     fdcdat, %a5
        move.l  dma, %a3
        * ^ why move.l ???
        lea     cmdbuf, %a0
        or.b    mfm, %d7
        move.b  %d7, (%a0)+
        move.b  disk, %d0
        move.b  %d0, (%a0)+
        move.b  trk, (%a0)+
        asr.b   #0x02, %d0
        move.b  %d0, (%a0)+
        lea     sec, %a1
        moveq   #0x05, %d0
rwsub1: move.b  (%a1)+, (%a0)+
        subq.b  #0x01, %d0
        bne     rwsub1
        moveq   #0x09, %d1
        bsr     cmdout
        rts
*
read:   bsr     seek
        bne     rbret
        moveq   #10, %d6
read1:  moveq   #0x06, %d7
        move.b  #0x00, fdsdr
        bsr     rwsub
rd:     btst    %d3, (%a4)
        beq     rd
        move.b  (%a5), (%a3)+
        dbf     %d2, rd
        move.b  #0x01, fdsdr
        bsr     rdrs
        beq     rgret
        bsr     recmd
        bsr     skcmd
        subq.b  #1, %d6
        bne     read1
rbret:  moveq   #0x01, %d0
        * ^ error
        rts
rgret:  clr.w   %d0
        * ^ succeed
        rts
*
write:  bsr     seek
        bne     wbret
        moveq   #10, %d6
write1: moveq   #0x05, %d7
        move.b  #0x00, fdsdr
        bsr     rwsub
wr:     btst    %d3, (%a4)
        beq     wr
        move.b  (%a3)+, (%a5)
        dbf     %d2, wr
        move.b  #0x01, fdsdr
        bsr     rdrs
        beq     wgret
        bsr     recmd
        bsr     skcmd
        subq.b  #1, %d6
        bne     write1
*
wbret:  bra     rbret
        * ^ error
wgret:  bra     rgret
        * ^ succeed
*
cmdout: btst    #0x04, fdcsts
        bne     cmdout
        lea     cmdbuf, %a0
cmdot1: move.b  fdcsts, %d0
        andi.b  #0xC0, %d0
        cmpi.b  #0x80, %d0
        bne     cmdot1
        move.b  (%a0)+, fdcdat
        subq.b  #0x01, %d1
        bne     cmdot1
        rts
*
rdrs:   lea     rstbuf, %a0
rdrs1:  btst    #0x07, fdcsts
        beq     rdrs1
        btst    #0x06, fdcsts
        beq     rdrs2
        move.b  fdcdat, (%a0)+
        bra     rdrs1
rdrs2:  move.b  rstbuf, %d0
        andi.b  #0xC0, %d0
        rts
*
*
*
EXCEPTION:
        * Unassigned exception
        bra     EXCEPTION
*
*
*
        .data
*       .org 0x1000
*
rmfm:   .byte   0
rtrk:   .byte   0
rdisk:  .byte   0
rsec:   .byte   1
rlen:   .byte   0
reot:   .byte   0x1A
rgpl:   .byte   7
rdtl:   .byte   0x80
*
rdma:   .long   0x00010000
*
rdph0:  .long   xlt
        .word   0
        .word   0
        .word   0
        .long   buf0
        .long   dpb
        .long   ckv0
        .long   alv0
*
rdph1:  .long   xlt
        .word   0
        .word   0
        .word   0
        .long   buf1
        .long   dpb
        .long   ckv1
        .long   alv1
*
rdpb:   .word   26
        .byte   3
        .byte   7
        .byte   0
        .byte   0
        .word   242
        .word   63
        .word   0xC000
        .word   16
        .word   2
*
rseg:   .word   1
        .long   0x00008000
        .long   0x00018000
*
xlt:    .byte   1, 7, 13, 19
        .byte   25, 5, 11, 17
        .byte   23, 3, 9, 15
        .byte   21, 2, 8, 14
        .byte   20, 26, 6, 12
        .byte   18, 24, 4, 10
        .byte   16, 22
*
mc68:   .ascii  "MC68000 Monitor Ver 1.0\0"
drive:  .ascii  "Drive  \0"
track:  .ascii  "Track  \0"
secter: .ascii  "Secter \0"
err:    .ascii  "Error !\0"
fr:     .ascii  "From \0"
to:     .ascii  "To   \0"
addr:   .ascii  "Address \0"
*
*
*
        .bss
*       .org    0x10000
*
mfm:    .byte   0
trk:    .byte   0
disk:   .byte   0
sec:    .byte   0
len:    .byte   0
eot:    .byte   0
gpl:    .byte   0
dtl:    .byte   0
*
dma:    .long   0
*
dph0:   .long   0
        .word   0
        .word   0
        .word   0
        .long   0
        .long   0
        .long   0
        .long   0
*
dph1:   .long   0
        .word   0
        .word   0
        .word   0
        .long   0
        .long   0
        .long   0
        .long   0
*
dpb:    .long   0
        .word   0
        .word   0
        .word   0
        .word   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
*
seg:    .word   0
        .long   0
        .long   0
*
cmdbuf: .rept   16
        .byte   0
        .endr
rstbuf: .rept   16
        .byte   0
        .endr
*
ckv0:   .rept   16
        .byte   0
        .endr
ckv1:   .rept   16
        .byte   0
        .endr
alv0:   .rept   32
        .byte   0
        .endr
alv1:   .rept   32
        .byte   0
        .endr
buf0:   .rept   128
        .byte   0
        .endr
buf1:   .rept   128
        .byte   0
        .endr
*
*
*
        .end
