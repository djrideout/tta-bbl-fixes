lorom

; addresses
!ROM_PASSWORD_TABLE = $81F87D
!ROM_CHECK_PASSWORD = $91EA33
!RAM_PASSWORD_1 = $7E0442
!RAM_PASSWORD_2 = $7E0444
!RAM_PASSWORD_3 = $7E0446

; password table at $81F87D (each column is a password)
;
; stage | 00 01 02 03 04 05 bonus
; ----------------------------
; val 1 | 01 09 06 07 06 02 03
; val 2 | 00 02 04 01 08 00 04
; val 3 | 07 03 05 00 09 05 08
;
; 00 - babs bunny
; 01 - plucky duck
; 02 - montana max
; 03 - elmira
; 04 - shirly the loon
; 05 - sweety bird
; 06 - gogo dodo
; 07 - bookworm
; 08 - calamity coyote
; 09 - little beeper

; nop out the check for password $04 (buster's sky-jinks) that jumps back to the password checking loop
org $91EA5A
nop
nop
nop
nop
nop
