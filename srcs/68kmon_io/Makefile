# makefile configuration
NAME = 68kmon_io
ELF = $(NAME).elf
SRCS = $(NAME).s crt0.S dummy.c
OBJS = $(NAME).o crt0.o dummy.o
ARCH  = m68k-elf
CPU = 68000

ADDR_START = 0
ADDR_TEXT = 0
ADDR_DATA = 0x1000
ADDR_BSS = 0x10000

#switch the compiler (for the internal make rules)
CC = $(ARCH)-gcc
AS = $(ARCH)-as
LD = $(ARCH)-ld
OBJCOPY = $(ARCH)-objcopy
OBJDUMP = $(ARCH)-objdump
# set your tool path
TOOLPATH = /usr/local/m68k-elf
CFLAGS = -static
ASFLAGS = -mcpu=$(CPU) -Wall -I.
LDFLAGS = -static -nostdlib -e $(ADDR_START) \
	-Ttext=$(ADDR_TEXT) -Tdata=$(ADDR_DATA) -Tbss=$(ADDR_BSS)

#all should be the first target. it's built when make is run without args
all: $(ELF) $(NAME).srec $(NAME).lst
all: $(ELF) $(NAME).hex $(NAME).lst

#additional rules for files
$(NAME).o: $(NAME).s
	$(AS) $(ASFLAGS) $^ -o $@ > /dev/null

$(ELF): $(OBJS)
	$(LD) $(OBJS) $(LDFLAGS) -o $@

$(NAME).srec: $(ELF)
	$(OBJCOPY) -O srec $^ $@

$(NAME).hex: $(ELF)
	$(OBJCOPY) -O ihex $^ $@

$(NAME).lst: $(ELF)
	$(OBJDUMP) -dSt $^ > $@

clean:
	rm -f $(OBJS) $(ELF) $(NAME).srec $(NAME).hex $(NAME).lst $(NAME).map

#backup archive
dist:
	tar czf dist.tgz *.c *.h *.txt Makefile

#dummy target as dependecy if something has to be build everytime
FORCE:
