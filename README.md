# DIB-BOT
Your guide to building and using DIB-BOT. This guide assumes you do not have a 3D printer already, and you've bought a new Ender3 for this project. If you've already got a 3D printer you can obviously skip some of these steps, or you might need to adapt. Good luck!
![Uploading 20230316_173502.jpg…]()

## Initial Setup
Step 1:
Acquire all the materials listed in "Shopping list.md"

Step 2:
Assemble the Ender 3. I found the method described by Chuck Hellebuyck (CHEPclub - Home, https://youtu.be/2Th2e7wTNV0) to be really useful. This differs slightly from the manufacturers instructions, and results in a more well-aligned printing bed. Of particular importance is to really tighten the belts - this improves the spatial resoltion of the printer and will help reduce positional variation of droplets between different wells.

Step 3: 
Do some test prints with the Ender3 to check if it has been assembled properly. You may need to tighten/align/troubleshoot before the Ender3 behaves reliably. For example the benchy boat, or CHEPs concentric circles.

Step 4: 
Print the nanoject holder (Nanoject_holder.stl, Nanoject_holder.gcode). I used PETG, you might be able to use another filament, if you don't use PETG you'll want to re-slice the .stl file as Nanoject_holder.gcode has been optimised for PETG. After printing, the bridge support and any small printing errors were carefully removed from the Nanoject holder with a scalpel and 120 grit sandpaper.

For DIB-BOT V1, you can stop here and start playing around with it. However, if you want to further automate the droplet deposition process and have the Ender3 control the Nanoject, you need to complete the following steps.

## Running DIB-BOT

### Developing a custom gcode print method

For this project I had to learn how to write gcode. This coding language has its roots in the first CNC metalworking machines from the 1950s, and is one of the first "high-level" programming languages. As such, its relatively simple to learn, particularly for the rudimentary cartesian movements that are performed by DIB-BOT. There are plenty of resources on Youtube, but I found websites like https://marlinfw.org/meta/gcode/ particularly useful for understanding specific commands (and Marlin is the "flavour" of gcode that the Ender3 runs on).  

I've annotated all of my code uploaded to this github, but below I've listed some of the most important commands:
```
G90 ;enable absolute positioning, so all movement commands are calculated relative to (0,0,0)
G91 ;enable relative positioning, so all movement commands are calculated relative to the current position
G28 ;Home all axes - this needs to happen at the start of every method to "zero" the axes

G1 X1 Y2 Z3 F3000 ; G1 is the basic move command. This particular line tells the printer to move to (1,2,3) in absolute positioning or move (+1,+2,+3) in relative positioning, at a speed of 3000 mm/min.
G4 S5 ;Pause for 5 seconds

M0 ;pause the print/method. The operator will need to press the resume button on the printer to continue the method. Useful for inserting indefinite pauses.
M0 Hello World ;Pauses the method and displays a little message, "Hello World" in this example. Useful for reminding the operator of what to do at every point, such as change the sample or check the tip calibration.

M104 S0 ;sets the hot end to 0 °C, to ensure nothing gets hot
M190 S0 ;sets the bed temperature to 0 °C
M107 ;turns the fan (FAN3) on the hot end OFF
M106 ;turns FAN3 ON
M300 P100 ;tells the 3D printer to emit a short beep from its internal speaker, length 100 ms in this example
```

**How to write/review/edit gcode**

You can use any plain text editor like Notepad. Just make sure you save it as a *.gcode file (for example, a file named "test print.gcode"), otherwise the Ender3 won't be able to read it.

I edit my gcode in Notepad++ (https://notepad-plus-plus.org/downloads/) using the custom language profile created by Eldar Gerfanov (https://zero-divide.net/?article_id=4809_notepad-absolutely-free-g-code-editor-with-code-highlighting) which just makes writing code a little bit cleaner and easier in my experience. If you're going to write a lot of gcode you'll be doing lots of find and replace actions which works well in Notepad ++.

### Importance of calibration

The 3D printer doesn't know where your 384-well plate is, how deep the wells are, or how long the pulled microcapillary is. At the start of all my gcode methods you'll find some calibration code:
```
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
```
The first G1 move lifts the print head to +150 mm, and then pauses. This is to provide plenty of clearance from the well plate, so the tip doesn't crash into it, and raises it to a nice ergonomic position to load the first aqueous solution. It then navigates to X45, Y129.9, Z68.3 before pausing again. Z68.3 was the exact position that was selected where the top of the well plate just touched the tip of the pulled capillary. It is important to mount the nanoinjector deliberately high in the harness, such that when you're at Z68.3, you need to lower the nanoinjector down a few millimeters manually to find the perfect "just touching" position. ***If you don't do this step you run the risk of crashing your tip into the plate during this first calibration step.*** 

Next, the print head will raise up to Z70 - 1.7 mm above the plate surface. This is the height that throughout the method is used to travel in x and y. It will then navigate to X51.1 Y162.4 and the pause again for you to check the xy calibration. If you're using the 3D printed well plate holder I have designed, and aligned it the left and bottom edges of the build plate, then the nozzle should be centered over well 1A. If its not centered, you have 2 options - move the well plate, or change the code. I do the latter, and use the manual movement controls on the printer itself to find the position of 1A, and then update the calibration code. ***This is vital to get correct, as the majority of the patterning gcode is executed in relative positioning (G91). So, if you don't nail the position of the first well, every other well won't work either***


### Materials

**1. Pulling capillaries to make nanoinjector nozzles** Micropipettes were pulled using a Sutter P-87 capillary puller. The puller was set in the following manner: heat = ramp (672), pull = 0, v = 40, time = 250, pressure = 500. The puller should loop twice, with the capillary breaking on the second loop. If the capillary snaps on the first loop, lower the heat and/or velocity parameters in small increments. Before mounting in the Nanoject, micropipettes were confidently but gently stabbed through a single sheet of kimwipe paper to break the tip cleanly, which was verified using a transmitted light microscope (4x objective). You can find a great resource for variations to this method in the "methods" folder, "capillary cookbook.pdf".

You can pull capillaries manually (as in heat up a capillary over a bunsen burner and pull) but this results in pretty rough nozzles. These instruments are regularly used in electrophysiology labs - if you're at a university, ask around. I didn't have one in my lab, but would pull batches of capillaries that last for a month or two. I have not yet found a good low-cost/open source capillary puller...

**2. Preparing lipid solutions** The "lipid-out" approach was employed, where lipids are dissolved in the oil phase. DPhPC was purchased from Sigma-Aldrich as a powder. The entire 200 mg vial was dissolved in chloroform to a concentration of 100 mg/ml. Aliquots of this stock solution were transferred to 2 mL glass HPLC vials and dried to a film under a stream of nitrogen. For example, 50 uL aliquots results in 10 mg per vial, perfect for redissolving with 1 mL of hexadecane to get 5 mg/mL. DPhPC films were further dried in vacuo for at least 18 hours before further use, and stored under nitrogen at -20 °C if not used immediately. 

**3. Preparing aqueous solutions** Full details can be found in the preprint, this depends on the experiment. Typically, aqueous solutions were buffered with 10 mM HEPES at pH 7, with approximately 1 M KCl.

### Running a custom gcode print method

**1. Load a pulled capillary** Remove the black plastic collet from the NanojectII and carefully remove the upper-most black O-ring from the stainless steel piston. You can do the following back-filling of the capillary in many different ways, but this worked best for me. The main thing is you want to fill the capillary with your oil phase without breaking the sharp end, and without introducing any air bubbles. First, I filled a 1 mL plastic syringe with hexadecane, and attached a blunt stainless steel 30g x 2" needle, gently depressing the plunger of the syringe to expel any air from the needle. Second, I placed the collect on the capillary before I pushed the black O-ring onto the blunt end of the pulled capillary and adjusted it to be 1-2 mm from the end (as this is where it will sit when it is inserted again in the Nanoject). I then back filled the pulled capillary, leaving a small amount to flow over the top of the blunt end. Using a kimwipe, I then gently blotted away any excess oil on the outside of the capillary and O-ring, but leaving the blunt aperture of the capillary with excess oil. Next, I carefully installed the capillary back onto the Nanoject, not tightening the collet too much. If there is any air in the capillary next to the stainless steel piston, do it again. Air bubbles are compressible and this can introduce issues with injection volume consistency, or failed injections (ie you press Inject and nothing comes out).

Once the capillary is back-filled with hexadecane, press "Empty" on the Nanoject control until the air is expelled from the sharp end. Mount the Nanoject in the 3D-printed harness on the x-stage of the Ender3, *taking care to mount the Nanoject high, so that when the next calibration step is carried out, you need to lower it. If you don't have it high enough, it may crash during the initialisation, breaking your tip. Pulled capillaries vary in length so this is impossible to fix for now. Finally, unless you have upgraded to v3 with automated sample loading, you can load your aqueous sample.
[insert image of correct loading height]

**2. Perform the calibration steps as outlined above**

**3. Droplet injection** With v1 of the DIB-BOT, there is no communication between the 3D printer and the Nanoject. In v1 methods, a pause is programmed when the nozzle is at the bottom of each well. The Ender3 will beep at you when its ready and thats your cue to press the "Inject" button on the Nanoject control box, and then push the knob in on the Ender3 to continue the method. I got pretty bored of this very quickly and modified the DIB-BOT to streamline this process, but it does work.

**4. Exchanging nozzle contents** If you want to have different aqueous contents on either side of the bilayer, you'll need to change the contents of your nozzle. In V1 methods, the following code facilitates this (was written for a 96 well plate with 9 mm centre-to-centre distance):
```
;change pipette contents
G1 Z80 ;lift pipette high
G1 Y-170 F3000 ;pushes plate back and out of the way
G4 S1
M25; pause to rinse +reload pipette
G1 Y161 F3000 ; brings plate
G1 Z-68; lower to travel position
M300 P100 ; short beep
G4 S2
M25 ; Pause print
```
After the nozzle has been raised up, carefully "Empty" the Nanoject, and then "Fill" with buffer or Milliq. Repeat this 2-3 times before filling with the next sample. It's tricky (which inspired v3 development) and you want to avoid touching the tip of the nozzle against the wall of the eppendorf tube, as this can cause imperceptible movement to the capillary and result in droplets not landing adjacent to the first droplet (thus failing to make a DIB). All the results from the paper were generated using v4 methods but you can still definitely make lots of good DIBs if you've got a steady hand with v1/v2.

## DIB-BOT v2: Automated droplet injection

Now you're ready to upgrade to v2 of DIB-BOT. This involves some hardware tinkering that may void your warranty on the Ender3 (as it involves opening up the motherboard case), and some additional elements in the gcode. The effort is worth it though, the result is a lot less button pushing.

### Modifications to DIB-BOT

1. You need to make a wire that connects the NanojectII to the Ender3. One end of this is a standard 3.5 mm 2-pole connector (same as you would find on  wired headphones). You can find this part easily online or at your local hobby/electronics store (I bought one from Jaycar here in Australia for less than $1). You'll need to solder the ends of the wire to the terminals inthe 3.5 mm connector, I don't think the polarity matters as the action of closing the circuit triggers the NanojectII, but you can follow my example which definitely works.
![FigureS1_circuit diagram motherboard connections-01](https://github.com/AFMason/DIB-BOT/assets/128661321/17172c1b-d2c9-4d4f-a399-a762b29b1975)

2. The other end of this cable will connect to the [CON2] screw connectors on the relay module (also from Jaycar, Cat# XC4419, 5V relay, $7.95). As per the above circuit diagram, connect one wire to the "common" screw, and the other to the "NO" screw (stands for normally open, ie the resting state is an open circuit).
![20230526_155846](https://github.com/AFMason/DIB-BOT/assets/128661321/dac3b652-3562-4d4e-b5a0-23ac1ca1b566)



-finding the correct pins to make it all work
![20230526_160025](https://github.com/AFMason/DIB-BOT/assets/128661321/c862c96c-70e1-4dea-b7c3-f70e3169f6f9)
Orange pin goes in Fan header
Red in ??
Black in ground (pin ? of ??)




### Modifications to gcode

-fan off/fan on cycling

-importance of delays

### Running DIB-BOTv2

## DIB-BOTv3: Semi-automated sample loading

The trickiest part of running DIB-BOTv2 is now sample exchange and rinsing the capillary - it is very easy to either break the tip of the capillary or nudge it so that its x/y position is out by 10s of microns, potentially decreasing your DIB yield. With DIB-BOTv3, the operator no longer has to hold a small tube up to the capillary; instead the capillary translates to one of 3 eppendorf tube holders in the plate holder to either dump to waste, fill with clean buffer/water, or load new sample.

### Modifications to gcode

### Running DIB-BOTv3
