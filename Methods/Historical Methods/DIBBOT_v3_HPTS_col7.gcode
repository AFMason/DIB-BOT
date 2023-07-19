; version 3.0 of DIB-BOT loading protocol, with automated injection :D
; loading 3 controls in column 6-7, 0 samples of a 384 well plate Greiner clear bottom
;!! CHECK INITIAL Z-HEIGHT BEFORE RUNNING GCODE!!

G90
M104 S0 ;hot end off
M190 S0 ;bed heat off
M107 ; fan off

G28 ; Home all axis
G1 Z150 F3000 ; Lift Z axis and load first solution
M106; fan on to open relay, enable fill/empty/inject button
M0 load A:pH 6; pause print, load first droplet solution
G1 X51.1 Y162.4 F3000; Move to start - 1A - check position of plate
G1 Z70 
G4 S1
M300 P100 ; short beep
G4 S1
M300 P100
G4 S1
M300 P100
M0 check start position; Pause print, check plate alignment

G91
G1 X27 ;shift method to start from well 7A

;deposit 16x first droplet read droplet with HPTS
;deposit col7, rowA #1
M107 ;fan off, relay closed
G4 S5
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowB #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowC #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowD #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowE #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowF #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowG #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowH #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowI #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowJ #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowK #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowL #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowM #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowN #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowO #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowP #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;change pipette contents neg control #2; pH 8 no pore
G1 Z92.7 ;lift pipette high
G4 S1
M300 P100 ; short beep
M0 load pH8 no aHL
G1 Z-80; return to transfer position
G1 Y67.5 X-0.1 F3000 ;travel from 7P to 7A with offset
M300 P100 ; short beep
G4 S1

;deposit 4x pH 8 droplets, no aHL
;deposit col7, rowA #2
M107 ;fan off, relay closed
G4 S5
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowB #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowC #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowD #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit 4x pH 8 droplets, no aHL, no bilayer (0.3 mm offset)
;deposit col7, rowE #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 X0.3 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowF #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowG #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowH #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;change pipette to aHL control
G1 Z92.7 ;lift pipette high
G4 S1
M300 P100 ; short beep
M0 load pH8 +aHL
G1 Z-80; return to transfer position
G1 Y-4.5 X-0.3 F3000 ;travel from 7H to 7I, return 0.3 offset to make bilayer
M300 P100 ; short beep
G4 S1

;deposit 8x pH 8 droplets, + aHL
;deposit col7, rowI #2
M107 ;fan off, relay closed
G4 S5
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowJ #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowK #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowL #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowM #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowN #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowO #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowP #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5
	
;change pipette contents droplet #3; pH 10 + HPTS
G1 Z92.7 ;lift pipette high
G4 S1
M300 P100 ; short beep
M0 load pH10 +HPTS
G1 Z-80; return to transfer position
G1 Y67.3 X0.3 F3000 ;travel from 7P to 7A with offset
M300 P100 ; short beep
G4 S1	

;deposit 16x pH 10 droplets, + HPTS
;deposit col7, rowA #3
M107 ;fan off, relay closed
G4 S5
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowB #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowC #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowD #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowE #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowF #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowG #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowH #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowI #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowJ #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowK #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowL #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowM #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowN #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowO #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col7, rowP #3
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5
	

G1 Z12.7
G90
G1 Z80
G1 X0 Y220 F3000
M0 click to end DIB-BOT
M300 P2500 ; long beep

M84 ; disable motors



