//Chapter 2: Antenna Basics
//Example 2-11.1
clc;

//Variable Initialization
P_t = 15        //Transmitter power (W)
A_et = 2.5      //Effective aperture of transmitter (meter^2)
A_er = 0.5      //Effective aperture of receiver (meter^2)
r = 15e3        //Distance between the antennas (Line of sight) (m)
frequency  = 5e9     //Frequency (Hz)
c = 3e8         //Speed of light (m/s)

//Calculation
wave_len = c/frequency                               //Wavelength (m)
P_r = (P_t*A_et*A_er)/((r**2)*(wave_len**2))    //Received power (W)

//Result
mprintf("The power delivered to the receiver is %.2e watts",P_r)
