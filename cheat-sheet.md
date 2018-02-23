# MOS 6502 processor (C64 processor)

## Registers

Register |  Decimal | Hex | Binary
A | 0-255 | 00-FF | 00000000-11111111
X | 0-255 | 00-FF | 00000000-11111111
Y | 0-255 | 00-FF | 00000000-11111111

## References

Reference | Explanation
----------|-------------
<span>#$00</span> | Hex byte
<span>$d020</span> | Memory address

## Instructions

Instruction | Function | Example
------------|----------|--------
ST[A,X,Y] | Move the byte into memory from register | sta $d020
LD[A,X,Y] | Store the byte into register | lda #$20
ASL | Instruction to shift bit to left
LSR | Instruction to shift bit to right

## Memory addresses

Address | Function
--------|---------
$d020 | Background color
$d021 | Foreground color
 
 ## Bit shifting example

Binary | Decimal | Instruction
-------|---------|------------
 0001 | 1 | ASL
 0010 | 2 | ASL
 0100 | 4 | ASL
 1000 | 8 | ASL
 0100 | 4 | LSR
 0010 | 2 | LSR
 0001 | 1 | LSR

 ## Relative addressing

TBD