    processor 6502
    org $1000

    lda #$20            ; Space character in screen memory
    ldx #$00            ; Set registry x to 0
    
clear_screen:
    sta $0400,x         ; Set screen memory address to 0 starting with 0400 then decreasing it to 04FF until 0400 again
    sta $0500,x         ; Set screen memory address to 0 starting with 0500 then decreasing it to 05FF until 0500 again
    sta $0600,x         ; Set screen memory address to 0 starting with 0600 then decreasing it to 06FF until 0600 again
    sta $0700,x         ; Set screen memory address to 0 starting with 0700 then decreasing it to 07FF until 0700 again
    dex                 ; Decrease X (from 00 becomes FF)
    bne clear_screen    ; Jump to clear_screen until 00

create_sprite:
    lda #$80
    sta $d07f8
    lda #$01
    sta $d015

    lda #$80
    sta $d000
    sta $d001

loop:
    jmp loop

    org $2000
    incbin "mysprite.spd"
