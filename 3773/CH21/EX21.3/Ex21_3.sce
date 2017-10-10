//Chapter 21: Antenna Measurements
//Example 21-2.3
clc;

//Variable Initialization
D = 0.5     //Antenna diameter (m)
f = 300e9   //Frequency (Hz)
c = 3e8     //Speed of light (m/s)

//Calculations
wave_lt = c/f   //Wavelength (m)
r_ff = 2*(D**2)/wave_lt    //Fraunhofer region (m)

//Result
mprintf("The Fraunhofer region starts at a distance %d m", r_ff)
mprintf("\nAt 300 GHz the attenuation of the atmosphere is around 10dB/km making the measurement difficult in full-size ranges")
