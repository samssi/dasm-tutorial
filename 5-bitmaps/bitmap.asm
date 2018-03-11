    processor 6502
    org $1000

;-----------------------------------------------------------------------

    lda $4710    ; From timanthes export. This is the background color that the image is using
    sta $d020    ; Set the backgrond color
    sta $d021    ; and set the foreground

;-----------------------------------------------------------------------
; Create a loop to copy the bitmap to screen memory

    ldx #$00     ; Set x-register to zero for looping with bne

load_image:
    lda $3f40,x  ; Character memory data from tiamanthes export. This is where the image data starts from
    sta $0400,x  ; Start with 0400 and decrease it with 1 to 04FF
    lda $4040,x  ;
    sta $0500,x
    lda $4140,x
    sta $0600,x
    lda $4240,x
    sta $0700,x

; Copy the color data from tiamanthes export
    lda $4328,x
    sta $d800,x
    lda $4482,x
    sta $d900,x
    lda $4528,x
    sta $da00,x
    lda $4628,x
    sta $db00,x

    inx
    bne load_image ; loop until zero flag

; ----------------------------------------------------------------------
; Set the system into bitmap mode and multicolor mode

    lda #$3b    ; Bitmap mode
    sta $d011   ; Mode address

    lda #$18    ; Multicolor mode
    sta $d016   ; Multicolor address

;------------------------------------------------------------------------
; Tell the VIC chip the screen RAM location

    lda #$18
    sta $d018

;------------------------------------------------------------------------
; main loop of the program

main:
    jmp main

    org $1FFE
    INCBIN "dog2.prg"