//Chapter 24: Space Wave Propagation
//Example 24-9.5
clc;

//Variable Initialization
h = 1000        //Height of duct (m)
delM = 0.036    //Change in refractive modulus (unitless)
c = 3e8         //Speed of light (m/s)

//Calculations
wl_max = 2.5*h*sqrt(delM*1e-6)  //Maximum wavelength (m)
fmax = c/wl_max     //Maximum frequency (Hz)

//Result
mprintf("The maximum frequency that can be transmitted is %.1f MHz", fmax/1e6)
