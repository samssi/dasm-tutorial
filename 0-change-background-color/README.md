# Hello world of MOS 6502 assembly

In this exercise we change the background and foreground color of C64 and create a main loop for the program. 

## Instructions learned here
Instuction | Description
-----------|------------
processor <processor_model> | Tell the assembler which processor to compile for
org $<memory_location_in_hex> | Memory location for the program to start
ldx, ldy, lda $<hex-value> | Store hex-value 04 to register x as a byte
main: | Instuction labeled main. It can be named freely as you want
stx, sty, sta $<memory_location_in_hex> | Move x,y,a from register to memory location
jmp <instuction_to_jump_to> | Jump to the instuction labeled here