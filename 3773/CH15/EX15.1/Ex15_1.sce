//Chapter 15: Antennas for Special Applications
//Example 15-2.1
clc;

//Variable Initialization
frequency = 100e3    //Frequency (Hz)
height = 150    //Height of antenna(m)
RL = 2          //Loss resistance (ohm)
c = 3e8         //Speed of light (m/s)

//Calculations
wave_lt = c/frequency    //Wavelength (m)
hp = height/wave_lt //Antenna (physical) height (lambda)
he = hp/2           //Effective height (lambda)

Rr = 400*(hp**2)  //Radiation resistance (ohm)

R_E = Rr/(Rr+RL)        //Radiation efficiency (unitless)

//Results
mprintf("The Effective height of the antenna is %.3f lambda", he)
mprintf("\nThe Radiation resistance for 150m vertical radiator is %d ohm", Rr)
mprintf("\nThe radiation efficiency is %.2f or %.2f percent", R_E,R_E*100)
