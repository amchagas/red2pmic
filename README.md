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
      
      
    
   
  Given the current state of commercially available electronic components these are the modules we want to make open/affordable (if you):


### this is an attempt to reduce the costs in a 2 Photon microscope

#### given developments in hardware, there is potential space to use affordable tools to substitute components tradionally used in 2P microscopes:
##### Galvanomotors that drive the scanning mirrors - current alternative: galvos for laser shows (~75€)
##### signal amplifiers for PMTs - current alternative RedPitaya
##### IO Boards for driving motors and digitizing data: current alternative Red Pitaya (200€-300€)



software:
luckly someone already wrote what seems to be a very well documented API for python and the Red Pitaya: PyRPL http://pyrpl.readthedocs.io/en/latest/index.html
this project starts with that, in the hope to leverage from open source tools and contribute to their further development.


pmt:
http://sensl.com/downloads/ds/DS-MicroMseries.pdf
http://sensl.com/downloads/ds/UM-MicroM.pdf
http://sensl.com/downloads/ds/APP-Biophotonics.pdf
http://sensl.com/applications/biophotonics/
http://www.sensl.com/downloads/irp/2012_Li_SPM_Detection_Low_Level_Bioluminescence_Development_Deployable_Whole_cell_biosensors.pdf
http://www.gaudi.ch/GaudiLabs/?page_id=718



------------------------------ outdated-------------------------------------------
This setup uses a Red Pitaya to generate waveforms (eventually will be used to collect data as well) and galvo motors that can be bought on ebay - the ideia is to try their performance with the same movement used in 2 photon microscopes.



Useful information about how to write code to control the redpitaya with code can be found here:
http://redpitaya.readthedocs.io/en/latest/appsFeatures/remoteControl/remoteControl.html



