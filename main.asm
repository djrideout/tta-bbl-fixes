lorom

; addresses
!ROM_PASSWORD_TABLE = $81F87D
!ROM_CHECK_PASSWORD = $91EA33
!RAM_PASSWORD_1 = $0442
!RAM_PASSWORD_2 = $0444
!RAM_PASSWORD_3 = $0446
!RAM_DIFFICULTY = $6C
!RAM_GAME_FORCED_INPUTS = $C8
!RAM_DASH_INPUTS = $60

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

; nop out setting the game to children difficulty if a password is used
org $91EA80
nop
nop

; use mapped dash inputs when automatically dashing off the train instead of hardcoded R button
org $81F9D7
lda !RAM_DASH_INPUTS
nop
ora #$0100 ; game originally presses right as well
