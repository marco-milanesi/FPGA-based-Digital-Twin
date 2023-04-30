[![Badge License]][license]

<a name="readme-top"></a>

<div align = center>

# FPGA-based Digital Twin Implementation for Mechatronic System Monitoring

_Source code and hardware configuration files for implementing an embedded DT on FPGA boards to control a DC motor._

<br>

## Team

[![Badge Marco]][marco]
[![Badge Jairo]][jairo]
[![Badge Justus]][justus]

<br>


<div align = left>

<!-- TABLE OF CONTENTS -->
### Tabe of Contents
 <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
</ol>




<!-- ABOUT THE PROJECT -->
## About The Project



<div align = center>
<img src="https://user-images.githubusercontent.com/47824890/227310442-26595fcd-8f56-4dba-93bd-d145482e69c4.png" data-canonical-src="https://user-images.githubusercontent.com/47824890/227310442-26595fcd-8f56-4dba-93bd-d145482e69c4.png" width="70%"/>

<div align = left>

This project aims to propose an embedded digital twin implementation on a Field Programmable Gate Array (FPGA) for mechatronics system monitoring. The Digital Twin of the physical system is built using MATLAB/Simulink. The obtained DT model is translated into HDL code using Matlab HDL coder toolbox for its implementation in a Xilinx FPGA for the position control of a DC motor. Thus,  the digital twin implementation acts as a reference for the physical asset performance, enabling event awareness capabilities.
The main contribution of this paper is the digital twin implementation at the hardware level using an FPGA, which is fed with real-time data exchanged directly from physical assets, eliminating the need for an intermediary cloud exchange that introduces latency and data privacy issues. This work contributes to the framework of smart control engineering, where controllers are equipped with information for smarter decision-making.

The project includes the source code and hardware configuration files for the implementation, as well as detailed instructions on how to set up the hardware and run the code. This project is suitable for anyone interested in learning about embedded systems, control systems, and FPGA programming.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<div align = left>

### Built With

* Arduino Mega
* Spartan Arty - S7
* DC Motor
* Simulink
* Vivado


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started
This repository is divided into two folders, each containing the source files, instructions, and results for implementing a PID control algorithm on Arduino and FPGA boards to control a DC motor.

- The <a href=https://github.com/marco-milanesi/PID-MotorControl/tree/main/Arduino_source>Arduino_source</a> folder provides instructions on replicating the project, including the Simulink file built using the <a href=https://it.mathworks.com/matlabcentral/fileexchange/40312-simulink-support-package-for-arduino-hardware>Simulink Support Package for Arduino Hardware</a>, how to run the code on the Arduino board, and the schematics of the connections.
- The <a href=https://github.com/marco-milanesi/PID-MotorControl/tree/main/FPGA_source>FPGA_source</a> folder contains instructions for replicating the project, including the Vivado project and the schematics.

Both folders contain detailed instructions on how to set up the hardware and run the code, as well as sample applications and test results. 


 * * * 



<!-- LICENSE -->
## License

Distributed under the MIT License. See <a href=https://github.com/marco-milanesi/FPGA-based-Digital-Twin/blob/main/LICENSE>`LICENSE.txt`</a>  for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

- Marco Milanesi - <a href = "mailto: marco.milanesi.99@gmail.com">marco.milanesi.99@gmail.com</a>
- Jairo Viola - <a href = "mailto: "></a>
- Justus Nwoke - <a href = "mailto: "></a>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

  


<!----------------------------------------------------------------------------->

[marco]: https://github.com/marco-milanesi
[jairo]: https://github.com/tartanus
[justus]: https://github.com/jnwok

[license]: LICENSE

<!---------------------------------{ Badges }---------------------------------->

[badge license]: https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge
[badge marco]: https://img.shields.io/badge/Marco_Milanesi-2930c1?style=for-the-badge
[badge jairo]: https://img.shields.io/badge/Jairo_Viola-2930c1?style=for-the-badge
[badge justus]: https://img.shields.io/badge/Justus_Nwoke-2930c1?style=for-the-badge

