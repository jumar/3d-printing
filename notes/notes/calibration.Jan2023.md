---
id: yfh7m7ywcfm9u65tqhpx7r0
title: Jan2023
desc: ''
updated: 1706157986647
created: 1706155147832
---

New Mobo

# e-steps
M92
-> M92 X80.00 Y80.00 Z800.00 E93.00

After extruding 100mm we're missing 7mm -> M92 E100.00000

# first layer

```Settings for first layer form
_________________________________________________________________________

G-Code originally generated by Simplify3D(R) Version 4.1.2
This calibration test gcode modified by the Teaching Tech Calibration website: https://teachingtechyt.github.io/calibration.html
All changes are marked in the gcode with 'custom' at the end of each line. Open the gcode in a text editor and search for this to your check inputs if needed.


Nozzle diameter: 0.4 mm
Layer height: 0.2 mm
Custom start gcode:


Bed: 220 x 220 mm

Base feedrate: 60 mm/sec
Perimeters: 36 mm/sec
Solid infill: 48 mm/sec
Travel moves: 100 mm/sec
First layer: 30 mm/sec
Extra margin from edge: 10 mm

Temperatures:
Bed: 45 deg C
Hot end: 195 deg C


ABL: Probe new mesh at the start of print - G29 (BLtouch,EZABL,etc)

Retraction distance: 1 mm
Retraction speed: 40 mm/sec
Extra restart distance: 0 mm
Z hop: 0 mm

```

Note:
*decreasing the hotend temp by 50C during ABL and homming avoids oosing*

Results:
A bit too far everywhere
Probe z-offset is -1.63
-> Let's try with z-offset @ -1.73