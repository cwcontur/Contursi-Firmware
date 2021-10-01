# Pi Firmware Setup
#### Raspberry Pi 4 Firmware + 1 Wire Temp Sensor Modules + Touchscreen UI
![GitHub](https://img.shields.io/github/license/marlinfirmware/marlin.svg)
## Pi Settings
```
sudo raspi-config
```
- Hostname -> Printer
- Password -> ******
- Wireless Connection
- Autologin
- 1-Wire Support -> Enable
- SSH -> Enable
- Camera -> Enable

```
sudo reboot
```

## Updates + NPM[^1]
```
sudo apt-get update
```
```
sudo apt full-upgrade
```
```
sudo apt-get install nodejs npm
``` 
```
sudo shutdown - r now
```

[^1]:[NPM](https://www.npmjs.com/package/raspberry).

## Faster Boot [^2]
```
sudo nano /boot/config.txt
```
- disable_splash=1
- dtoverlay=disable-bt
- boot_delay=0

***Cooling Fan Needed for Overclocking!***
- over_voltage=6
- arm_freq=2147
- gpu_freq=750 

```
sudo reboot
```

```
sudo nano /boot/cmdline.txt
```
- Delete 'splash' parameter
- Add 'quiet' parameter

```
systemd-analyze blame
```

**[These may not work!]**

```
sudo systemctl disable dhcpcd.service
```
```
sudo systemctl disable networking.service
```
```
sudo systemctl disable ntp.service
```
```
sudo systemctl disable dphys-swapfile.service
```
```
sudo systemctl disable keyboard-setup.service
```
```
sudo systemctl disable apt-daily.service
```
```
sudo systemctl disable wifi-country.service
```
```
sudo systemctl disable hciuart.service
```
```
sudo systemctl disable raspi-config.service
```
```
sudo systemctl disable avahi-daemon.service
```
```
sudo systemctl disable triggerhappy.service
```

```
sudo reboot
```

[^2]: [Pi Fast Boot](https://singleboardbytes.com/637/how-to-fast-boot-raspberry-pi.htm) 

## Github SSH [^3]
```
ssh-keygen -t ed25519 -C "cwcontur@uncg.edu"
```
```
eval "$(ssh-agent -s)"
```
```
ssh-add ~/.ssh/id_ed25519
```
```
cat ~/.ssh/id_ed25519.pub
```
- Then select and copy the contents of the id_ed25519.pub file
displayed in the terminal to your clipboard
- Go here to add key -> https://github.com/settings/keys

[^3]: [Github SSH Setup](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) 

## Temp Sensor [^4]
#### ***DS18B20 Sensor Being Replaced With MCP9808[^6]***

[^6]: [MCP9808](https://github.com/fivdi/mcp9808-temperature-sensor)

```
git clone git@github.com:thisdavej/ds18b20-raspi.git
```
```
npm install -g ds18b20-raspi
```
```
$ ds18b20 [deviceId] [options]

Options
  --all, -a       Get readings of all temperature sensors found
  --list, -l      List device ids of all 1-Wire sensors found
  --degf, -f      Get temperature in degF instead of degC
  --decimals, -d  Number of decimal digits to display
  --help, -h      Show help
  --version, -v   Display version information

Examples
  Get temperature of sensor (only works if there is exactly one DS18B20 1-Wire sensor present)
  $ ds18b20

  Get temperature readings of all 1-Wire sensors found
  $ ds18b20 -a

  Get temperature of a specific 1-Wire device id
  $ ds18b20 28-051724b238ff

  Get temperature of a specific 1-Wire device id in degF with 2 decimals
  $ ds18b20 28-051724b238ff -f -d 2

  List device ids of all 1-Wire sensors found
  $ ds18b20 --list
```

#### MCP9808[^7][^8]

```
sudo apt-get install build-essential python-dev python-pip python-smbus git
```

```
sudo pip install RPi.GPIO
```
```
git clone git@github.com:cwcontur/Adafruit_Python_MCP9808.git
```
```
cd Adafruit_Python_MCP9808
```
```
sudo python setup.py install
```

[^7]: [MCP9808 Wiring](https://learn.adafruit.com/mcp9808-temperature-sensor-python-library/hardware)
[^8]: [MCP9808 Software](https://learn.adafruit.com/mcp9808-temperature-sensor-python-library/software)
[^4]: [DS18B20](https://github.com/thisdavej/ds18b20-raspi) 

## OctoPrint UI [^5]
```
bash <(wget -qO- https://github.com/UnchartedBull/OctoDash/raw/main/scripts/install.sh)
```

**[Enable needed plugins + CORS]**

[^5]: [OctoDash](https://github.com/UnchartedBull/OctoDash) 


# Marlin 3D Printer Firmware

![GitHub](https://img.shields.io/github/license/marlinfirmware/marlin.svg)

<img align="right" width=175 src="buildroot/share/pixmaps/logo/marlin-250.png" />

Additional documentation can be found at the [Marlin Home Page](https://marlinfw.org/).

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
