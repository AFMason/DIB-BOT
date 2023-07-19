; version 4.0 of DIB-BOT loading protocol, with automated injection + semi-automated rinsing :D
; HPTS without aHL, checking negative controls, investigate possibility of H+/OH- diffusing through oil phase
;method used for AM1-87, starting in col9

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
M0 check inject volume

G91 ;relative positioning mode
;initial load from well 9A
G1 X36 F1000 ;goto 9A
G1 Z-12.7 ;Z to inject height
M0 FILL "A"; pause print, load first droplet solution
G1 Z12.7 ;Z to transfer height
G1 Z10 ;Z to test inject height
G4 S1
M300 P100
M0 INJECT test
G1 Z-10 ;Z to transfer height
G1 X4.5 ;shift method to start from well 10A

;deposit col10, rowA #1
G4 S0.5
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowB #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowC #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowD #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

	;rinse pipette x1
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

	;load sample2
	G1 Z70 F3000 ;up to transfer height
	G1 X51.1 Y162.4 F1000 ;goto 1A
	G91 ;return to relative positioning
	G1 Y-18 X18 F900 ;goto 5E
	G1 Z-12.7 ;Z to inject height
	M0 FILL "B"
	G1 Z12.7 ;Z to transfer height
	G1 Z10
	G4 S1
	M300 P100
	M0 INJECT test

	;return to experiment wells
	G1 Z-10 ;Z to transfer height
	G1 X4.5 ;goto 6E

;deposit col10, rowE #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowF #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowG #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowH #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

	;rinse pipette x1
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

	;load sample3
	G1 Z70 F3000 ;up to transfer height
	G1 X51.1 Y162.4 F1000 ;goto 1A
	G91 ;return to relative positioning
	G1 Y-36 X18 F900 ;goto 5I
	G1 Z-12.7 ;Z to inject height
	M0 FILL "C"
	G1 Z12.7 ;Z to transfer height
	G1 Z10
	G4 S1
	M300 P100
	M0 INJECT test

	;return to experiment wells
	G1 Z-10 ;Z to transfer height
	G1 X4.5 ;goto 6I

;deposit col10, rowI #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowJ #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowK #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowL #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

	;rinse pipette x1
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

	;load sample4
	G1 Z70 F3000 ;up to transfer height
	G1 X51.1 Y162.4 F1000 ;goto 1A
	G91 ;return to relative positioning
	G1 Y-54 X18 F900 ;goto 5M
	G1 Z-12.7 ;Z to inject height
	M0 FILL "D"
	G1 Z12.7 ;Z to transfer height
	G1 Z10
	G4 S1
	M300 P100
	M0 INJECT test

	;return to experiment wells
	G1 Z-10 ;Z to transfer height
	G1 X4.5 ;goto 6M

;deposit col10, rowM #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowN #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowO #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowP #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit 12x "DETECTION 5 mM" droplets
;rinse pipette x1
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

;load 50 uM HPTS pH6 5 mM TRIS solution
G1 Z70 F3000 ;up to transfer height
G1 X51.1 Y162.4 F1000 ;goto 1A
G91 ;return to relative positioning
G1 Y-4.5 X36 F900 ;goto 9B
G1 Z-12.7 ;Z to inject height
M0 FILL HPTS 5 mM
G1 Z12.7 ;Z to transfer height
G1 Z10
G4 S1
M300 P100
M0 INJECT test

;return to experiment wells
G1 Z-10 ;Z to transfer height
G1 Y4.5 X4.5 ;goto 10A

;deposit col10, rowA #2
G4 S0.5 
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowB #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowC #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowD #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowE #2
G1 Y-4.5 X0.5 F1500; shift one well down, add 0.5 mm offset
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowF #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowG #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowH #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

	;deposit 8x "DETECTION 10 mM" droplets
	;rinse pipette x1
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

	;load 0.5 mM HPTS pH6 10 mM TRIS solution
	G1 Z70 F3000 ;up to transfer height
	G1 X51.1 Y162.4 F1000 ;goto 1A
	G91 ;return to relative positioning
	G1 Y-45 X18 F900 ;goto 5K
	G1 Z-12.7 ;Z to inject height
	M0 FILL "HPTS 10 mM"
	G1 Z12.7 ;Z to transfer height
	G1 Z10
	G4 S1
	M300 P100
	M0 INJECT test

	;return to experiment wells
	G1 Z-10 ;Z to transfer height
	G1 Y9 X4.5 ;goto 6I

;deposit col10, rowI #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowJ #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowK #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col10, rowL #2
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2.5 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;for 10M>10P, no 2nd droplet in this expt
	;deposit col10, rowM #2
	G1 Y-4.5 F1500; shift one well down
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

	;deposit col10, rowN #2
	G1 Y-4.5 F1500; shift one well down
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

	;deposit col10, rowO #2
	G1 Y-4.5 F1500; shift one well down
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well

	;deposit col10, rowP #2
	G1 Y-4.5 F1500; shift one well down
	M107 ;fan off, relay closed
	G4 S1
	G1 Z-12.7 ;Z to inject height
	M106 ;fan on, relay open, inject should fire
	G4 S2.5 ;pause to allow monolayer to form, can be tweaked
	G1 Z12.7 ;Z to transfer height
	G4 S1 ;pause to allow droplet to settle before moving to next well


G90
G1 Z80
G1 X0 Y220 F1500
M300 P2500 ; long beep
M0 collect plate
G1 Y0 F3000
G4 S1
G1 Z0 F3000
M84 ; disable motors



