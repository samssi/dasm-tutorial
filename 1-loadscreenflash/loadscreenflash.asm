    processor 6502
    org $1000

    ldx #$00 
    ldy #$0B ; Dark grey
    sty $d021 ; foreground color
main:
    stx $d020 ; background color
    inx ; Increment x register byte
    jmp main