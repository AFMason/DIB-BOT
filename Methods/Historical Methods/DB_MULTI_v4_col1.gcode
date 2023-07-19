; version 4.0 of DIB-BOT loading protocol, with automated injection + semi-automated rinsing :D
; tri-colour droplets, all combinations
;method used for AM1-89, starting in col1

G90
M104 S0 ;hot end off
M190 S0 ;bed heat off
M107 ; fan off

G28 ; Home all axis
G1 Z80 F1000 ; Lift Z axis 
M106; fan on to open relay, enable fill/empty/inject button

G1 X45.0 Y129.9 F3000
G1 Z68.3 
M0 check nozzle height
G1 Z70


;final initialisation checks
G1 X51.1 Y162.4 F3000; Move to start - 1A - check position of plate
G4 S1
M300 P100 ; short beep
G4 S1
M300 P100
G4 S1
M300 P100
M0 check start position; Pause print, check plate alignment
M0 V=23.0 DUDU

G91 ;relative positioning mode
;initial load from well 1A
G1 X0 Y0 F1000 ;goto 1A
G1 Z-12.7 ;Z to inject height
M0 FILL FITC; pause print, load first droplet solution
G1 Z12.7 ;Z to transfer height
G1 Z10 ;Z to test inject height
G4 S1
M300 P100
M0 INJECT test
G1 Z-10 ;Z to transfer height
G1 X4.5 ;shift method to start from well 1A

;deposit col2, rowA #1 [AAA]
G1 X-0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowB #1 [AAB]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowC #1 [AAC]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowD #1 [ABA]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well


;deposit col2, rowE #1 [ABB]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
	;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowF #1 [ABC]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
	;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowG #1 [ACA]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowH #1 [ACB]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

	
;deposit col2, rowI #1 [ACC]
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowJ #1 [BBB]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowK #1 [BBA]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowL #1 [BBC]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well


;deposit col2, rowM #1 [BAA]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowN #1 [BAB]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
	;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowO #1 [BAC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowP #1 [BCA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowA #1 [BCB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowB #1 [BCC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowC #1 [CCC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowD #1 [CCA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowE #1 [CCB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowF #1 [CAA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowG #1 [CAB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowH #1 [CAC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowI #1 [CBA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowJ #1 [CBB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowK #1 [CBC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit "B" Rhodamine droplets
;rinse pipette x2
G90 ;enter absolute positioning
G1 X31.8 Y124.3 F1000 ;goto tube3, waste
G1 Z56.0 F3000 ;down to touch waste solution
M0 EMPTY to waste
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y142.2 F1000 ;goto tube2, milliQ
G1 Z56.0 F3000 ; down deep in MQ to rinse
M0 FILL with MQ
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y124.3 F1000 ;goto tube3, waste
G1 Z56.0 F3000 ;down to touch waste solution
M0 EMPTY to waste
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y142.2 F1000 ;goto tube2, milliQ
G1 Z56.0 F3000 ; down deep in MQ to rinse
M0 FILL with MQ
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y124.3 F1000 ;goto tube3, waste
G1 Z56.0 F3000 ;down to touch waste solution
M0 EMPTY to waste

;load rhodamine B solution
G1 Z70 F3000 ;up to transfer height
G1 X51.1 Y162.4 F1000 ;goto 1A
G91 ;return to relative positioning
G1 X0 Y-4.5 F900 ;goto 1B
G1 Z-12.7 ;Z to inject height
M0 FILL Rhodamine
G1 Z12.7 ;Z to transfer height
G1 Z10
G4 S1
M300 P100
M0 INJECT test

;return to experiment wells
G1 Z-10 ;Z to transfer height
G1 X4.5 Y4.5 ;goto 2A

;deposit col2, rowA #2 [AAA]
G1 X-0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowB #2 [AAB]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowC #2 [AAC]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowD #2 [ABA]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well


;deposit col2, rowE #2 [ABB]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowF #2 [ABC]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowG #2 [ACA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowH #2 [ACB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
	
;deposit col2, rowI #2 [ACC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowJ #2 [BBB]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowK #2 [BBA]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowL #2 [BBC]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowM #2 [BAA]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowN #2 [BAB]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowO #2 [BAC]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowP #2 [BCA]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowA #2 [BCB]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowB #2 [BCC]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowC #2 [CCC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowD #2 [CCA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowE #2 [CCB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowF #2 [CAA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowG #2 [CAB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowH #2 [CAC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowI #2 [CBA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowJ #2 [CBB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowK #2 [CBC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit "C" Rhodamine droplets
;rinse pipette x2
G90 ;enter absolute positioning
G1 X31.8 Y124.3 F1000 ;goto tube3, waste
G1 Z56.0 F3000 ;down to touch waste solution
M0 EMPTY to waste
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y142.2 F1000 ;goto tube2, milliQ
G1 Z56.0 F3000 ; down deep in MQ to rinse
M0 FILL with MQ
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y124.3 F1000 ;goto tube3, waste
G1 Z56.0 F3000 ;down to touch waste solution
M0 EMPTY to waste
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y142.2 F1000 ;goto tube2, milliQ
G1 Z56.0 F3000 ; down deep in MQ to rinse
M0 FILL with MQ
G1 Z70 F3000 ;up to transfer height
G1 X31.8 Y124.3 F1000 ;goto tube3, waste
G1 Z56.0 F3000 ;down to touch waste solution
M0 EMPTY to waste

;load rhodamine C solution
G1 Z70 F3000 ;up to transfer height
G1 X51.1 Y162.4 F1000 ;goto 1A
G91 ;return to relative positioning
G1 X0 Y-9 F900 ;goto 1C
G1 Z-12.7 ;Z to inject height
M0 FILL Atto647
G1 Z12.7 ;Z to transfer height
G1 Z10
G4 S1
M300 P100
M0 INJECT test

;return to experiment wells
G1 Z-10 ;Z to transfer height
G1 X4.5 Y9 ;goto 2A

;
;
;
;deposit C

;deposit col2, rowA #3 [AAA]
G1 X-0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowB #3 [AAB]
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowC #3 [AAC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowD #3 [ABA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowE #3 [ABB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowF #3 [ABC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowG #3 [ACA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowH #3 [ACB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
	
;deposit col2, rowI #3 [ACC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowJ #3 [BBB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowK #3 [BBA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowL #3 [BBC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well


;deposit col2, rowM #3 [BAA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowN #3 [BAB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowO #3 [BAC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowP #3 [BCA]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowA #3 [BCB]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowB #3 [BCC]
;deposit left
G1 X-0.6 Y-4.5 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowC #3 [CCC]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowD #3 [CCA]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowE #3 [CCB]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowF #3 [CAA]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowG #3 [CAB]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowH #3 [CAC]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowI #3 [CBA]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowJ #3 [CBB]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col3, rowK #3 [CBC]
;deposit left
G1 X-0.6 Y-4.5 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit middle
G1 X0.3 F500
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well
;deposit right
G1 X0.3 F500
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well




G90
G1 Z80
G1 X0 Y220 F500
M300 P2500 ; long beep
M0 collect plate
G1 Y0 F3000
G4 S1
G1 Z0 F3000
M84 ; disable motors



