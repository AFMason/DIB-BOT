; V2 of patterning method
; slower translate speeds, changed from F3000 to F500 after initialisation

G90
M104 S0 ;hot end off
M190 S0 ;bed heat off
M107 ; fan off

G28 ; Home all axis
G1 Z150 F3000 ; Lift Z axis and load first solution
M106; fan on to open relay, enable fill/empty/inject button
M0 load dye; pause print, load first droplet solution
G1 X45.0 Y129.9 F3000
G1 Z68.3 
M0 check nozzle height
G1 Z70
G1 X51.1 Y162.4 F3000; Move to start - 1A - check position of plate
G4 S1
M300 P100 ; short beep
G4 S1
M300 P100
G4 S1
M300 P100
M0 check start position; Pause print, check plate alignment

G91 ;relative positioning mode
;G1 X49.5 ;shift method to start from well 12A

;deposit 4x pattern A, 4.6 nL
;deposit col1, rowA #1
G1 X-0.2 F300; position 1 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowA #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowA #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowA #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowB #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-4.5 F300; position 1 Pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowB #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowB #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowB #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowC #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-4.5 F300; position 1 Pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowC #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowC #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowC #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowD #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-4.5 F300; position 1 Pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowD #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowD #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowD #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit 4x pattern B, 4.6 nL
;deposit col1, rowE #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-4.5 F300; position 1 Pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowE #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowE #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowE #1
G1 Z12.7 ;lift above plate top
G1 X-0.4 Y-0.2 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowE #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowE #1
G1 Z12.7 ;lift above plate top
G1 X-0.2 Y-0.2 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowF #1
G1 Z12.7 ;lift above plate top
G1 Y-4.1 F300; position 1 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowF #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowF #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowF #1
G1 Z12.7 ;lift above plate top
G1 X-0.4 Y-0.2 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowF #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowF #1
G1 Z12.7 ;lift above plate top
G1 X-0.2 Y-0.2 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowG #1
G1 Z12.7 ;lift above plate top
G1 Y-4.1 F300; position 1 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowG #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowG #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowG #1
G1 Z12.7 ;lift above plate top
G1 X-0.4 Y-0.2 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowG #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowG #1
G1 Z12.7 ;lift above plate top
G1 X-0.2 Y-0.2 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowH #1
G1 Z12.7 ;lift above plate top
G1 Y-4.1 F300; position 1 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowH #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowH #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowH #1
G1 Z12.7 ;lift above plate top
G1 X-0.4 Y-0.2 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowH #1
G1 Z12.7 ;lift above plate top
G1 X0.2 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowH #1
G1 Z12.7 ;lift above plate top
G1 X-0.2 Y-0.2 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5
G1 Z12.7 ;raise Z to transfer height

;repeat A-H, but with 0.3 mm spacing/14 nL droplets
;deposit 4x pattern A, 13.8 nL
;deposit col1, rowI #1
G1 Y-4.1 F300; position 1 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowI #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowI #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowI #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowJ #1
G1 Z12.7 ;lift above plate top
G1 X-0.9 Y-4.5 F300; position 1 Pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowJ #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowJ #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowJ #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowK #1
G1 Z12.7 ;lift above plate top
G1 X-0.9 Y-4.5 F300; position 1 Pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowK #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowK #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowK #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowL #1
G1 Z12.7 ;lift above plate top
G1 X-0.9 Y-4.5 F300; position 1 Pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowL #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowL #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowL #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 4 pattern A
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;depost 4x pattern B, 13.8 nL
;deposit col1, rowM #1
G1 Z12.7 ;lift above plate top
G1 X-0.9 Y-4.5 F300; position 1 Pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowM #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowM #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowM #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-0.3 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowM #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowM #1
G1 Z12.7 ;lift above plate top
G1 X-0.3 Y-0.3 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowN #1
G1 Z12.7 ;lift above plate top
G1 Y-3.9 F300; position 1 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowN #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowN #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowN #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-0.3 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowN #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowN #1
G1 Z12.7 ;lift above plate top
G1 X-0.3 Y-0.3 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowO #1
G1 Z12.7 ;lift above plate top
G1 Y-3.9 F300; position 1 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowO #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowO #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowO #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-0.3 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowO #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowO #1
G1 Z12.7 ;lift above plate top
G1 X-0.3 Y-0.3 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowP #1
G1 Z12.7 ;lift above plate top
G1 Y-3.9 F300; position 1 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowP #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 2 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowP #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 3 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowP #1
G1 Z12.7 ;lift above plate top
G1 X-0.6 Y-0.3 F300; position 4 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowP #1
G1 Z12.7 ;lift above plate top
G1 X0.3 F300; position 5 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowP #1
G1 Z12.7 ;lift above plate top
G1 X-0.3 Y-0.3 F300; position 6 pattern B
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5





G1 Z12.7
G90
G1 Z80
G1 X0 Y220 F300
M0 click to end DIB-BOT
M300 P2500 ; long beep

M84 ; disable motors



