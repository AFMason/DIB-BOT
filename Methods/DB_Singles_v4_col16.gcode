; version 4.0 of DIB-BOT loading protocol, with automated injection + semi-automated rinsing :D
; 4 different buffer concentrations; 5,10,20,40 mM TRIS pH 8
;method used for AM1-8?

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
M0 V=50.6 nL DDUD

G91 ;relative positioning mode
;initial load from well 12A
G1 X49.5 ;goto 12A
G1 Z-12.7 ;Z to inject height
M0 FILL Fluorescein; pause print, load first droplet solution
G1 Z12.7 ;Z to transfer height
G1 Z10 ;Z to test inject height
G4 S1
M300 P100
M0 INJECT test
G1 Z-10 ;Z to transfer height
G1 X18 ;shift method to start from well 16A

;deposit col2, rowA #1
G4 S0.5
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowB #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowC #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowD #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowE #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowF #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowG #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowH #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well


;deposit col2, rowI #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowJ #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowK #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowL #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well


;deposit col2, rowM #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowN #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowO #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
G1 Z12.7 ;Z to transfer height
G4 S1 ;pause to allow droplet to settle before moving to next well

;deposit col2, rowP #1
G1 Y-4.5 F1500; shift one well down
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ;Z to inject height
M106 ;fan on, relay open, inject should fire
G4 S2
M107 ;fan off, relay closed
G4 S2
M106 ;fan on, relay open, inject should fire
G4 S2 ;pause to allow monolayer to form, can be tweaked
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



