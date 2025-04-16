TARGET = m68k-stub.elf
SREC = $(TARGET).srec
LIST = $(TARGET).lis
ARCH = m68k-elf
ADDR_START = 0
ADDR_TEXT = 0
ADDR_DATA = 0x2000
ADDR_BSS = 0x10000

CC = $(ARCH)-gcc
LD = $(ARCH)-ld
AS = $(ARCH)-as
OBJCOPY = $(ARCH)-objcopy
OBJDUMP = $(ARCH)-objdump
#CFLAGS = -B/usr/local/m68k-elf -m68020 -Dmc68020 \
	-Wa,'-mno-68881' -U__HAVE_68881__ -std=gnu89
# -B or --sysroot ?
CFLAGS = -B/usr/local/m68k-elf -m68000 -Dmc68000 \
	-std=gnu89
LDFLAGS = -static -nostdlib -e $(ADDR_START) \
	-Ttext=$(ADDR_TEXT) -Tdata=$(ADDR_DATA) -Tbss=$(ADDR_BSS)
#ASFLAGS = -m68020 -Wa,'-mno-68881'
ASFLAGS = -m68000

SRCS = crt0.S main.c m68k-stub.c
OBJS = crt0.o main.o m68k-stub.o

all: $(TARGET)

#@.S: @.o
#	$(AS) $^ $(ASFLAGS) -o $@

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(TARGET)
	$(OBJCOPY) -O srec $(TARGET) $(SREC)
#	$(OBJCOPY) -O ihex $(TARGET) $(SREC)
	$(OBJDUMP) -dSt $(TARGET) > $(LIST)

clean:
	rm -f $(TARGET) $(OBJS) $(SREC) $(LIST)
