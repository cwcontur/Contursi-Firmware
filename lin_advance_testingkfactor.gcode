; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Gnocchi
; Filament: PLA
; Created: Fri Oct 22 2021 21:36:59 GMT-0400 (Eastern Daylight Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 180 °C
; Bed Temperature = 60 °C
; Retraction Distance = 1 mm
; Layer Height = 0.2 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 280 mm
; Bed Size Y = 305 mm
; Origin Bed Center = true
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 2
; Factor Stepping = 0.2
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 75 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
T0 ; Switch to tool 0
M104 S180 ; Set nozzle temperature (no wait)
M190 S60 ; Set bed temperature (wait)
G28 ; Home all axes
G1 Z5 F100 ; Z raise
M109 S180 ; Wait for nozzle temp
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X0 Y0 F7200 ; move to start
G1 Z0.2 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X-49 Y-37.5 F7200 ; move to start
G1 X-49 Y37.5 E7.4835 F1800 ; print line
G1 X-48.28 Y37.5 F7200 ; move to start
G1 X-48.28 Y-37.5 E7.4835 F1800 ; print line
G1 E-1 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-39 Y-37.5 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-37.5 E0.7982 F1200 ; print line
G1 X21 Y-37.5 E1.5965 F4200 ; print line
G1 X41 Y-37.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y-32.5 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-32.5 E0.7982 F1200 ; print line
G1 X21 Y-32.5 E1.5965 F4200 ; print line
G1 X41 Y-32.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y-27.5 F7200 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-27.5 E0.7982 F1200 ; print line
G1 X21 Y-27.5 E1.5965 F4200 ; print line
G1 X41 Y-27.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y-22.5 F7200 ; move to start
M900 K0.6 ; set K-factor
M117 K0.6 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-22.5 E0.7982 F1200 ; print line
G1 X21 Y-22.5 E1.5965 F4200 ; print line
G1 X41 Y-22.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y-17.5 F7200 ; move to start
M900 K0.8 ; set K-factor
M117 K0.8 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-17.5 E0.7982 F1200 ; print line
G1 X21 Y-17.5 E1.5965 F4200 ; print line
G1 X41 Y-17.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y-12.5 F7200 ; move to start
M900 K1 ; set K-factor
M117 K1 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-12.5 E0.7982 F1200 ; print line
G1 X21 Y-12.5 E1.5965 F4200 ; print line
G1 X41 Y-12.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y-7.5 F7200 ; move to start
M900 K1.2 ; set K-factor
M117 K1.2 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-7.5 E0.7982 F1200 ; print line
G1 X21 Y-7.5 E1.5965 F4200 ; print line
G1 X41 Y-7.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y-2.5 F7200 ; move to start
M900 K1.4 ; set K-factor
M117 K1.4 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y-2.5 E0.7982 F1200 ; print line
G1 X21 Y-2.5 E1.5965 F4200 ; print line
G1 X41 Y-2.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y2.5 F7200 ; move to start
M900 K1.6 ; set K-factor
M117 K1.6 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y2.5 E0.7982 F1200 ; print line
G1 X21 Y2.5 E1.5965 F4200 ; print line
G1 X41 Y2.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y7.5 F7200 ; move to start
M900 K1.8 ; set K-factor
M117 K1.8 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y7.5 E0.7982 F1200 ; print line
G1 X21 Y7.5 E1.5965 F4200 ; print line
G1 X41 Y7.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y12.5 F7200 ; move to start
M900 K2 ; set K-factor
M117 K2 ; 
G1 E1 F1800 ; un-retract
G1 X-19 Y12.5 E0.7982 F1200 ; print line
G1 X21 Y12.5 E1.5965 F4200 ; print line
G1 X41 Y12.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X-39 Y17.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X-19 Y17.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X-19 Y37.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X21 Y17.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X21 Y37.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X43 Y-39.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X45 Y-39.5 E0.0798 F1200 ; 0
G1 X45 Y-37.5 E0.0798 F1200 ; 0
G1 X45 Y-35.5 E0.0798 F1200 ; 0
G1 X43 Y-35.5 E0.0798 F1200 ; 0
G1 X43 Y-37.5 E0.0798 F1200 ; 0
G1 X43 Y-39.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-29.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X45 Y-29.5 E0.0798 F1200 ; 0
G1 X45 Y-27.5 E0.0798 F1200 ; 0
G1 X45 Y-25.5 E0.0798 F1200 ; 0
G1 X43 Y-25.5 E0.0798 F1200 ; 0
G1 X43 Y-27.5 E0.0798 F1200 ; 0
G1 X43 Y-29.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X46 Y-29.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X46 Y-29.1 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X47 Y-29.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X47 Y-27.5 F7200 ; move to start
G1 X47 Y-25.5 F7200 ; move to start
G1 X47 Y-27.5 E0.0798 F1200 ; 4
G1 X49 Y-27.5 E0.0798 F1200 ; 4
G1 X49 Y-25.5 F7200 ; move to start
G1 X49 Y-27.5 E0.0798 F1200 ; 4
G1 X49 Y-29.5 E0.0798 F1200 ; 4
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-19.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X45 Y-19.5 E0.0798 F1200 ; 0
G1 X45 Y-17.5 E0.0798 F1200 ; 0
G1 X45 Y-15.5 E0.0798 F1200 ; 0
G1 X43 Y-15.5 E0.0798 F1200 ; 0
G1 X43 Y-17.5 E0.0798 F1200 ; 0
G1 X43 Y-19.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X46 Y-19.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X46 Y-19.1 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X47 Y-19.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X47 Y-17.5 F7200 ; move to start
G1 X49 Y-17.5 E0.0798 F1200 ; 8
G1 X49 Y-19.5 E0.0798 F1200 ; 8
G1 X47 Y-19.5 E0.0798 F1200 ; 8
G1 X47 Y-17.5 E0.0798 F1200 ; 8
G1 X47 Y-15.5 E0.0798 F1200 ; 8
G1 X49 Y-15.5 E0.0798 F1200 ; 8
G1 X49 Y-17.5 E0.0798 F1200 ; 8
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-9.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X43 Y-7.5 E0.0798 F1200 ; 1
G1 X43 Y-5.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X44 Y-9.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X44 Y-9.1 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X45 Y-9.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X45 Y-7.5 F7200 ; move to start
G1 X45 Y-5.5 F7200 ; move to start
G1 X47 Y-5.5 E0.0798 F1200 ; 2
G1 X47 Y-7.5 E0.0798 F1200 ; 2
G1 X45 Y-7.5 E0.0798 F1200 ; 2
G1 X45 Y-9.5 E0.0798 F1200 ; 2
G1 X47 Y-9.5 E0.0798 F1200 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y0.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X43 Y2.5 E0.0798 F1200 ; 1
G1 X43 Y4.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X44 Y0.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X44 Y0.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X45 Y0.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X45 Y2.5 F7200 ; move to start
G1 X47 Y2.5 E0.0798 F1200 ; 6
G1 X47 Y0.5 E0.0798 F1200 ; 6
G1 X45 Y0.5 E0.0798 F1200 ; 6
G1 X45 Y2.5 E0.0798 F1200 ; 6
G1 X45 Y4.5 E0.0798 F1200 ; 6
G1 X47 Y4.5 E0.0798 F1200 ; 6
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y10.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X43 Y12.5 F7200 ; move to start
G1 X43 Y14.5 F7200 ; move to start
G1 X45 Y14.5 E0.0798 F1200 ; 2
G1 X45 Y12.5 E0.0798 F1200 ; 2
G1 X43 Y12.5 E0.0798 F1200 ; 2
G1 X43 Y10.5 E0.0798 F1200 ; 2
G1 X45 Y10.5 E0.0798 F1200 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X0 Y0 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;