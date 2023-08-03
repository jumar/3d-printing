M201 X500.00 Y500.00 Z100.00 E5000.00 ;Setup machine max acceleration
M203 X500.00 Y500.00 Z10.00 E50.00 ;Setup machine max feedrate
M204 P500.00 R1000.00 T500.00 ;Setup Print/Retract/Travel acceleration
M205 X8.00 Y8.00 Z0.40 E5.00 ;Setup Jerk
M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate
G92 E0 ;Reset Extruder
M117 Retract 500 before homing...
G1 E-5 F300 ;retract 5 mm filament speed 300 to avoid oozing during ABL
M117 Homing...
G28 ;Home
M117 Loading UBL mesh
G29 L0 ; Load the mesh stored in slot 0 (from G29 S0)
M117 Probing 3 points to tilt the loaded UBL mesh
G29 J ; Probe 3 points and tilt the mesh according to what it finds, optionally G29 J2 would do 4 points.
M117 Moving up a bit...
G1 Z2.0 F3000 ;Move Z Axis up
M117 Going to start position
G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position
G1 E5 F300 ; extract 5 mm filament at speed 300 was retracted to avoid oozing during ABL
M117 Drawing setup line 1
G1 X10.1 Y200.0 Z0.28 F1500.0 E15 ;Draw the first line
M117 Drawing setup line 2
G1 X10.4 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
;M900 K0.95 ; set linear advance k factor (AMZ3D PLA)
M117 Ready to go!