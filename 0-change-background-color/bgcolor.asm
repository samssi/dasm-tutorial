    processor 6502 ; Choose the type of processor you are doing the assembly for
    org $1000 ; Memory location for the program to start in Hex. (in decimal 4096) This is where SYS instruction should be pointed

    ldx #$04 ; Store hex-value 04 to register x as a byte
main:
    stx $d020 ; Move x register byte to memory background color memory location.
    jmp main ; Loop the program