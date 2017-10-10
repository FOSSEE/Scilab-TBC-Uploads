//Chapter 23: Ground Wave Propagation
//Example 23-2.1
clc;

//Variable Initialization
f = 3e6     //Frequency (Hz)
sigma = 0.5     //Standard deviation of surface irregularities (unitless)
theta = 30      //Angle of incidence as measured from normal angle (degrees)
c = 3e8     //Speed of light (m/s)

//Calculations
wave_lt = c/f   //Wavelength (m)
R = 4*%pi*sigma*sin(theta*%pi/180)/wave_lt      //Roughness factor (unitless)

//Result
mprintf("The roughness factor is %.6f",R)
