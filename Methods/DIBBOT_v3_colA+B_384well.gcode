; version 2.0 of DIB-BOT loading protocol, with automated injection :D
; loading 4 controls, 2 samples in columns 1+2, rows A-P of a 384 well plate
;C1:1A>1D
;C2:1E>1H
;C3:1I>1L
;C4:1M>1P
;S1:2A>2H
;S2:2I>2P
;!! CHECK INITIAL Z-HEIGHT BEFORE RUNNING GCODE!!

G90
M104 S0 ;hot end off
M190 S0 ;bed heat off
M107 ; fan off

G28 ; Home all axis
G1 Z150 F3000 ; Lift Z axis and load first solution
M106; fan on to open relay, enable fill/empty/inject button
M0 load 1A>1D #1; pause print, load first droplet solution
G1 X49.9 Y161.8 F3000; Move to start - 1A - check position of plate
G1 Z70 
G4 S1
M300 P100 ; short beep
G4 S1
M300 P100
G4 S1
M300 P100
M0 check start position; Pause print, check plate alignment

G91
;remove ; if want to edit for different start column, eg G1 X13.5 ;shift method to start from well 4A

;deposit 5x first droplet
;deposit col1, rowA #1
M107 ;fan off, relay closed
G4 S5
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowB #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowC #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowD #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowE #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;change pipette contents 2A>2H #1
G1 Z12.7 ;lift pipette high
;G4 S1
M300 P100 ; short beep
;M0 load 2A>2P #1
;G1 Z-80; return to transfer position
G1 Y18 X4.5 F3000 ;move from 1E to 2A, 4*4.5 to return y to 1A, 4.5 in x to move to colB
M300 P100 ; short beep
G4 S1

;deposit x8 droplets, all colB samples share same initial droplet #1
;deposit col2, rowA #1
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowB #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowC #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowD #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowE #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowF #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowG #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowH #1
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;change pipette contents for Control1, 1A>1E #2
G1 Z92.7 ;lift pipette high
G4 S1
M300 P100 ; short beep
M0 load 1A>1E #2
G1 Z-80; return to transfer position
G1 Y31.5 X-4.4 F3000 ;move from 2H to 1A, 7*4.5 to return y to rowA, -4.4 in x to place adjacent droplet in col1
M300 P100 ; short beep
G4 S1

;deposit col1, rowA #2
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowB #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowC #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowD #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col1, rowE #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;change pipette contents 2A>2H #2
G1 Z92.7 ;lift pipette high
G4 S1
M300 P100 ; short beep
M0 load 2A>2H #2
G1 Z-80; return to transfer position
G1 Y18 X4.5 F3000 ;move from 1P to 2A, 4*4.5 to return y to 1A, 4.5 in x to move to colB
M300 P100 ; short beep
G4 S1

;deposit x8 droplets, sample#1 droplet#2
;deposit col2, rowA #2
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowB #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowC #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowD #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowE #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowF #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowG #2
G1 Z12.7 ;lift above plate top
G1 Y-4.5 F3000
M107 ;fan off, relay closed
G4 S1
G1 Z-12.7 ; Lower Z axis
M106 ;fan on, relay open, inject should fire
G4 S5

;deposit col2, rowH #2
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



