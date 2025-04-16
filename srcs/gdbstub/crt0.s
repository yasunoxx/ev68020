/*
 * crt0.S -- startup routines for ev68020/m68k-elf
 * (C)2025 by yasunoxx▼Julia <yasunoxx gmail>
 * original 'newlib/libgloss/crt0.S' copyright (C) Cygnus Support
 */

/*
 * crt0.S -- startup file for m68k-coff
 *
 * Copyright (c) 1995, 1996, 1998 Cygnus Support
 *
 * The authors hereby grant permission to use, copy, modify, distribute,
 * and license this software and its documentation for any purpose, provided
 * that existing copyright notices are retained in all copies and that this
 * notice is included verbatim in any distributions. No written agreement,
 * license, or royalty fee is required for any of the authorized uses.
 * Modifications to this software may be copyrighted by their authors
 * and need not follow the licensing terms described here, provided that
 * the new terms are clearly indicated on the first page of each file where
 * they apply.
 */

#include "asm.h"

*	.title "crt0.S for m68k-elf"
#define STACKSIZE	0x4000

/*
 * Define an empty environment.
 */
    .data
    .align 2
SYM (environ):
    .long 0

 	.align	2
	.text

/*
 * These symbols are defined in C code, so they need to always be
 * named with SYM because of the difference between object file formats.
 */

/* These are defined in C code. */
	.extern SYM (main)
	.extern SYM (exit)
//	.extern SYM (hardware_init_hook)
//	.extern SYM (software_init_hook)
	.extern SYM (atexit)
	.extern SYM(__do_global_dtors)

/*
 * Set things up so the application will run. For historical reasons
 * this is called 'start'.  We set things up to provide '_start'
 * as with other systems, but also provide a weak alias called
 * 'start' for compatibility with existing linker scripts.
 */
	.text 0
vectors:
** Initial Interrupt/Supervisor Stack Pointer
    .long    0x00017FFF
** Initial Program Counter
    .long    _start
*
** other Exception vectors here
*
	.extern	handle_buserror
	.long	handle_buserror

********************************
** running on Supervisor mode
********************************
    .text 1
    .org     0x400
*   ^ here .org is "-Ttext" + 0x400
	.global SYM (start)
	.weak SYM (start)
	.set SYM (start),SYM(_start)

	.global SYM (_start)
SYM (_start):
	/*
	 * put any hardware init code here
	 */

	/* See if user supplied their own stack (__stack != 0).  If not, then
	 * default to using the value of %sp as set by the ROM monitor.
	 */
*	movel	IMM(__stack), a0
*	cmpl	IMM(0), a0
*	jbeq    1f
*	movel	a0, sp
1:
	/* set up initial stack frame */
*	link	a6, IMM(-8)

/*
 * zero out the bss section.
 */
	movel	IMM(__bss_start), d1
	movel	IMM(_end), d0
	cmpl	d0, d1
	jbeq	3f
	movl	d1, a0
	subl	d1, d0
	subql	IMM(1), d0
2:
	clrb	(a0)+
#if !defined(__mcoldfire__)
	dbra	d0, 2b
	clrw	d0
	subql	IMM(1), d0
	jbcc	2b
#else
	subql	IMM(1), d0
	jbpl	2b
#endif
	
3:

/*
 * initialize target specific stuff. Only execute these
 * functions it they exist.
 */
*	PICLEA	SYM (hardware_init_hook), a0
*	cmpl	IMM(0),a0
*	jbeq	4f
*	jsr     (a0)
4:
*
*	PICLEA	SYM (software_init_hook), a0
*	cmpl	IMM(0),a0
*	jbeq	5f
*	jsr     (a0)
5:

/*
 * call the main routine from the application to get it going.
 * main (argc, argv, environ)
 * we pass argv as a pointer to NULL.
 */

#ifdef ADD_DTORS
	/* put __do_global_dtors in the atexit list so the destructors get run */
	movel	IMM (SYM(__do_global_dtors)),(sp)
	PICCALL	SYM (atexit)
#endif
#ifdef	HAVE_ATEXIT
	movel	IMM (__FINI_SECTION__),(sp)
	PICCALL	SYM (atexit)
#endif

#	PICCALL	__INIT_SECTION__
#	PICCALL SYM (init)

    pea     0
	PICPEA	SYM (environ),a0
    pea     sp@(4)
    pea     0
	PICCALL	SYM (main)
	movel	d0, sp@-

	stop	#0x2700

/*
 * drop down into exit incase the user doesn't. This should drop
 * control back to the ROM monitor, if there is one. This calls the
 * exit() from the C library so the C++ tables get cleaned up right.
 */
#ifdef	HAVE_EXIT
	PICCALL	SYM (exit)
#endif


*
** subroutines for call BIOS.S
*
    .global putDebugChar
    .global getDebugChar
	.global	setjmp
	.global	longjmp
putDebugChar:
    rts

getDebugChar:
    rts

setjmp:
	rts

longjmp:
	rts


*
** subroutines call from m68k-stub.c
*
    .global __returnFromException
    .global exceptionHandler
__returnFromException:
    stop #0x2700

exceptionHandler:
**	call from handleException(), setDebugTraps()
	move.l	(sp)+, d0
*	^ (sp), d0 or pushback stack ?
	rol.l	#2, d0
	move.l	d0, a0
	add.l	vectors, a0
**	^ FIXME: m68020 has VBR, fix it vectors(VBR) if use VBR
	move.l	fp@(-4), a1
	move.l	a1, (a0)
    rts
*
/* 
 * These values are set in the linker script, so they must be
 * explicitly named here without SYM.
 */
	.data
*
	.bss
	.extern __bss_start
*	.extern __stack	// not used USP
*	.org	0x8000
	.extern _end

*
*
	.end
