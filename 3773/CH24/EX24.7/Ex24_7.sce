//Chapter 24: Space Wave Propagation
//Example 24-14.1
clc;

//Variable Initialization
d = 3000      //Distance (km)
f = 3e3         //Frequency (MHz)

//Calculations
path_l = 32.45 + 20*log10(f) + 20*log10(d)

//Result
mprintf("The path loss between the two points is %.3f dB",path_l)
