# Marlin 3D Printer Firmware

<img src="https://img.shields.io/badge/-Contursi-blue" alt="GitHub release"/> <img src="https://awesome.re/badge.svg">
<img src="https://img.shields.io/github/license/cwcontur/Contursi-Marlin-Firmware"> 
<img src="https://img.shields.io/github/v/release/cwcontur/Contursi-Marlin-Firmware?color=yellow&include_prereleases"/>
<img src="https://img.shields.io/github/commit-activity/m/cwcontur/Contursi-Marlin-Firmware?color=Green"/>
<img src="https://img.shields.io/github/languages/top/cwcontur/Contursi-Marlin-Firmware?color=purple"/>

<img align="right" width=175 src="buildroot/share/pixmaps/logo/marlin-250.png" />


Additional documentation can be found at the [Marlin Home Page](https://marlinfw.org/). \
Original source code can be found at [Marlin GitHub Repository](https://github.com/MarlinFirmware/Marlin).

## Marlin 2.0

Marlin 2.0 takes this popular RepRap firmware to the next level by adding support for much faster 32-bit and ARM-based boards while improving support for 8-bit AVR boards. Read about Marlin's decision to use a "Hardware Abstraction Layer" below.

Download earlier versions of Marlin on the [Releases page](https://github.com/MarlinFirmware/Marlin/releases).

## Building Marlin 2.0

To build Marlin 2.0 you'll need [Arduino IDE 1.8.8 or newer](https://www.arduino.cc/en/main/software) or [PlatformIO](http://docs.platformio.org/en/latest/ide.html#platformio-ide). Detailed build and install instructions are posted at:

  - [Installing Marlin (Arduino)](http://marlinfw.org/docs/basics/install_arduino.html)
  - [Installing Marlin (VSCode)](http://marlinfw.org/docs/basics/install_platformio_vscode.html).

### Supported Platforms

  Platform|MCU|Example Boards
  --------|---|-------
  [Arduino AVR](https://www.arduino.cc/)|ATmega|RAMPS, Melzi, RAMBo
  [Teensy++ 2.0](http://www.microchip.com/wwwproducts/en/AT90USB1286)|AT90USB1286|Printrboard
  [Arduino Due](https://www.arduino.cc/en/Guide/ArduinoDue)|SAM3X8E|RAMPS-FD, RADDS, RAMPS4DUE
  [ESP32](https://github.com/espressif/arduino-esp32)|ESP32|FYSETC E4, E4d@BOX, MRR
  [LPC1768](http://www.nxp.com/products/microcontrollers-and-processors/arm-based-processors-and-mcus/lpc-cortex-m-mcus/lpc1700-cortex-m3/512kb-flash-64kb-sram-ethernet-usb-lqfp100-package:LPC1768FBD100)|ARM® Cortex-M3|MKS SBASE, Re-ARM, Selena Compact
  [LPC1769](https://www.nxp.com/products/processors-and-microcontrollers/arm-microcontrollers/general-purpose-mcus/lpc1700-cortex-m3/512kb-flash-64kb-sram-ethernet-usb-lqfp100-package:LPC1769FBD100)|ARM® Cortex-M3|Smoothieboard, Azteeg X5 mini, TH3D EZBoard
  [STM32F103](https://www.st.com/en/microcontrollers-microprocessors/stm32f103.html)|ARM® Cortex-M3|Malyan M200, GTM32 Pro, MKS Robin, BTT SKR Mini
  [STM32F401](https://www.st.com/en/microcontrollers-microprocessors/stm32f401.html)|ARM® Cortex-M4|ARMED, Rumba32, SKR Pro, Lerdge, FYSETC S6
  [STM32F7x6](https://www.st.com/en/microcontrollers-microprocessors/stm32f7x6.html)|ARM® Cortex-M7|The Borg, RemRam V1
  [SAMD51P20A](https://www.adafruit.com/product/4064)|ARM® Cortex-M4|Adafruit Grand Central M4
  [Teensy 3.5](https://www.pjrc.com/store/teensy35.html)|ARM® Cortex-M4|
  [Teensy 3.6](https://www.pjrc.com/store/teensy36.html)|ARM® Cortex-M4|
  [Teensy 4.0](https://www.pjrc.com/store/teensy40.html)|ARM® Cortex-M7|
  [Teensy 4.1](https://www.pjrc.com/store/teensy41.html)|ARM® Cortex-M7|
  Linux Native|x86/ARM/etc.|Raspberry Pi

## Administration
The current Marlin admin team consists of:

 - Scott Lahteine [[@thinkyhead](https://github.com/thinkyhead)] - USA 
 - Roxanne Neufeld [[@Roxy-3D](https://github.com/Roxy-3D)] - USA
 - Keith Bennett [[@thisiskeithb](https://github.com/thisiskeithb)] - USA
 - Victor Oliveira [[@rhapsodyv](https://github.com/rhapsodyv)] - Brazil
 - Chris Pepper [[@p3p](https://github.com/p3p)] - UK
 - Jason Smith [[@sjasonsmith](https://github.com/sjasonsmith)] - USA
 - Luu Lac [[@shitcreek](https://github.com/shitcreek)] - USA
 - Bob Kuhn [[@Bob-the-Kuhn](https://github.com/Bob-the-Kuhn)] - USA
 - Erik van der Zalm [[@ErikZalm](https://github.com/ErikZalm)] - Netherlands 

## License

Marlin is published under the [GPL license](/LICENSE) because we believe in open development. The GPL comes with both rights and obligations. Whether you use Marlin firmware as the driver for your open or closed-source product, you must keep Marlin open, and you must provide your compatible Marlin source code to end users upon request. The most straightforward way to comply with the Marlin license is to make a fork of Marlin on Github, perform your modifications, and direct users to your modified fork.

## Calibration
- https://reprap.org/wiki/Calibration
- https://reprap.org/wiki/Configuring_Marlin_Bed_Dimensions

## Bed Leveling

- https://3dprinting.stackexchange.com/questions/8153/how-to-set-z-probe-boundary-limits-in-firmware-when-using-automatic-bed-leveling/8154
- https://marlinfw.org/docs/configuration/probes.html
- https://reprap.org/forum/read.php?415,880766
- https://all3dp.com/2/bltouch-sensors-guide/
- https://all3dp.com/2/octoprint-bltouch-guide/

## BLTouch/CrTouch

- [Endstop Troubleshooting](https://www.reddit.com/r/3Dprinting/comments/euap3q/software_endstops_not_working_bigtreetech_skr/)
- [BLTouch SKR Mini E3 v2 Setup Guide](https://www.reddit.com/r/3Dprinting/comments/hx6ab3/bed_leveling_bltouch_inductive_sensor/)
- [CRTouch Installation](https://www.youtube.com/watch?v=de4b6HZIpNA&ab_channel=3DPrintingCanada)
- [Z-Probe Troubleshooting Thread](https://www.reddit.com/r/ender3/comments/izgji8/bltouch_skr_mini_e3_v20_auto_homing_not_working/)
- [SKR Mini E3 v2 Marlin Setup Guide](https://www.reddit.com/r/3Dprinting/comments/n7or5u/marlin_20x_guide_skr_mini_e3_v20_ender_3/)

## Marlin settings to explore :microscope:
- Extra Fan Speed
- Thermal Probe Compensation
- Lin_Advance Settings [[Configuration]](https://marlinfw.org/docs/features/lin_advance.html)
- Calibration_GCODE
- Backlash_GCODE
- Backlash_Smoothing_MM
- Backlash_Compensation
- Axis_relative_Modes
- Extruder Cooling Fans (Cooler_Auto_Fan_Pin, Extruder_Auto_Fan_Speed)
- Hotend_Idle_Timeout [**Will enable for release**]
- Autotemp_Proportional
- PID_Fan_Scaling
- Filament_Runout_Sensor [**Will enable/configure after more testing!**]
- Debug_Leveling_Feature
- UBL_Mesh_Wizard
- Nozzle_Clean_Feature
- Fan_Kickstart_Time
- Fan_Min_PWM
- Fan_Max_PWM
- Fast PWM Fan Settings
- Part-Cooling Fan Multiplexer
- Homing_Backoff_Post_MM
- TMC Homing Stepper phase
- Stepper Driver Anti-SNAFU Protection
- Postmortem_Debugging
- Buffer_Monitoring
