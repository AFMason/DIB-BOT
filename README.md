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

-links to useful resources

-key commands

-importance of calibration

-writing code in Notepad++ with custom language filter

### Materials

-pulling capillaries

-preparing lipid solution

-preparing aqueous solution(s)

### Running a custom gcode print method

-loading capillary

-tip calibration in z and x/y

-droplet injection

-changing capillary contents

## DIB-BOT v2: Automated droplet injection

Now you're ready to upgrade to v2 of DIB-BOT. This involves some hardware tinkering that will void your warranty, and some additional elements in the gcode. The effort is worth it though, the result is a lot less button pushing. You will void your warranty on the Ender3 as it involves opening up the motherboard case.

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
