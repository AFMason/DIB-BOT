# DIB-BOT
Your guide to building and using DIB-BOT. This guide assumes you do not have a 3D printer already, and you've bought a new Ender3 for this project. If you've already got a 3D printer you can obviously skip some of these steps, or you might need to adapt. Good luck!

Step 1:
Acquire all the materials listed in "Shopping list.md"

Step 2:
Assemble the Ender 3. I found the method described by Chuck Hellebuyck (CHEPclub - Home, https://youtu.be/2Th2e7wTNV0) to be really useful. This differs slightly from the manufacturers instructions, and results in a more well-aligned printing bed. 

Step 3: 
Do some test prints with the Ender3 to check if it has been assembled properly. You may need to tighten/align/troubleshoot before the Ender3 behaves reliably. For example the benchy boat, or CHEPs concentric circles.

Step 4: 
Print the nanoject holder (Nanoject_holder.stl, Nanoject_holder.gcode). I used PETG, you might be able to use another filament, if you don't use PETG you'll want to re-slice the .stl file as Nanoject_holder.gcode has been optimised for PETG. After printing, the bridge support and any small printing errors were carefully removed from the Nanoject holder with a scalpel and 120 grit sandpaper.

For DIB-BOT V1, you can stop here and start playing around with it. However, if you want to further automate the droplet deposition process and have the Ender3 control the Nanoject, you need to complete the following steps.

