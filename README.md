# Red2PMic - An affordable Open Source 2-Photon Microscope

Hello! Thanks for stopping by. This is the rally point for the Red2PMic project. In this readme you will find the reason behind this project, information about the people involved, ways to collaborate and an open space for questions and suggestions!

##### Project description:
  This project is the focus of my FreiesWissen fellowship [link]. The idea behind it is to use the 2-Photon Microscope as a proxy for Open Source hardware, as they are composed of several modules that are common to other scientific hardware (see below). The idea is that by making these modules open source, we will have a starting point for other equipment and of course an affordable, open alternative for 2-Photon Microscopes.
  
  - Hardware Modules in a 2-Photon system:
      - Optics (guidance/shaping of laser light)
      - Scanning mirrors ("moving" of laser light) **
      - IO system: **
        - generation of signals to control physical devices (motors, scanning mirrors, stimulators)
        - Acquisition of signals from the system (feedback signal from mirrors, data from PMT sensors)
      - Photo Multipliers (register light coming from samples being analysed and convert them to current signals) **
      - Current to voltage converter (prepares signal from PMTs to be recordded by the IO System) **
      - Cameras (used to control sample placement and do calibration of the laser focal point in the sample chamber) **
      - Laser source (pulsing laser able to produce high energy super fast laser pulses-femtosecond range)
      
      
    
   
#### initial implementation suggestions:

##### Hardware:
IO System: Red Pitaya, STM32, ESP32, Teensy board

PMT:

http://sensl.com/downloads/ds/DS-MicroMseries.pdf

http://sensl.com/downloads/ds/UM-MicroM.pdf

http://sensl.com/downloads/ds/APP-Biophotonics.pdf

http://sensl.com/applications/biophotonics/

http://www.sensl.com/downloads/irp/2012_Li_SPM_Detection_Low_Level_Bioluminescence_Development_Deployable_Whole_cell_biosensors.pdf

http://www.gaudi.ch/GaudiLabs/?page_id=718

Scanning Mirrors: Galvanometers and mirrors used in laser shows

Current to Voltage converters: Custom Hardware

Cameras: Webcams, Raspberry Pi cameras, Arducams

Pockels cell:

    Thorlabs EO-PC-850 - Pockels Cell, 700 - 1000 nm  https://www.thorlabs.de/thorproduct.cfm?partnumber=EO-PC-850

Pockels cell driver:

    1) Vigitek: QBU-BT-series Bench-Top Pockels cell Drivers(~ 2500.00 USD) http://vigitek.biz/high-voltage-switches/qbu-bt-series-bench-top-pockels-cell-drivers-2/



software:
There seems to be a very well documented API for python and the Red Pitaya: PyRPL http://pyrpl.readthedocs.io/en/latest/index.html (we can start with that, in the hope to leverage from open source tools and contribute to their further development.)


Useful information about how to write code to control the redpitaya with code can be found here:
http://redpitaya.readthedocs.io/en/latest/appsFeatures/remoteControl/remoteControl.html





