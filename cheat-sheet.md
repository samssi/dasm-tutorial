# MOS 6502 processor (C64 processor)

## Registers

Register |  Decimal | Hex | Binary
---------|----------|-----|-------
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
processor <processor_model> | Tell the assembler which processor to compile for
org $<memory_location_in_hex> | Memory location for the program to start
ldx, ldy, lda $<hex-value> | Store hex-value 04 to a register as a byte
ldx, ldy, lda #%<binary-value> | Store binary value to register eg. #%0000001 as a byte
main: | Branch labeled in this case main. Branch can be referenced to with jmp, bne or other similar instructions
jmp <instuction_to_jump_to> | Jump to the branch labeled here
sta, stx, sty | Move the byte into memory from register | sta $d020
lda, ldx, ldy | Store the byte into register | lda #$20
asl | Instruction to shift bit to left
lsr | Instruction to shift bit to right
bne | Branch if Not Equal. Checks wheter branch execution set the zero flag. Meaning that a byte retrieved from memory was 0

## Memory addresses

Address | Function
--------|---------
$d020 | Background color
$d021 | Foreground color
$d015 | Sprite enable register. Memory location of the sprites visibility
 
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

## Commodore 64 color codes
Decimal | Hex | Color
--------|-----|------
0 | 00 | Black
1 | 01 | White
2 | 02 | Red
3 | 03 | Cyan
4 | 04 | Purple
5 | 05 | Green
6 | 06 | Blue
7 | 07 | Yellow
8 | 08 | Orange
9 | 09 | Brown
10 | 0A | Pink
11 | 0B | Dark grey
12 | 0C | Grey
13 | 0D | Light green
14 | 0E | Light blue
15 | 0F | Light grey