    processor 6502 ; Choose the type of processor you are doing the assembly for
    org $1000 ; Memory location for the program to start in Hex. (in decimal 4096) This is where SYS instruction should be pointed

    ldx #$04 ; Store hex-value 04 to register x as a byte
    ldy #$01 ;
main:
    stx $d020 ; Move x register byte to memory background color memory location. 04 corresponds color purple
    sty $d021 ; Move y register byte to memory foreground color location. 01 corresponds to white
    jmp main ; Loop the program