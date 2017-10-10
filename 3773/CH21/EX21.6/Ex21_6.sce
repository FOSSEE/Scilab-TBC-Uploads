//Chapter 21: Antenna Measurements
//Example 21-5.1
clc;

//Variable Initialization
En = 1      //Field illuminating the AUT (unitless)
tilt_diff = 88   //Difference in tilt angles (degrees)

//Calculations
En_pol = En*sin(tilt_diff*%pi/180)   //Co-polar component of field (unitless)
En_crosspol = En*cos(tilt_diff*%pi/180)                    //Cross-polar component of field (unitless)
meas_cross = 20*log10(En_crosspol)

//Result
mprintf("The measure cross-polar level is %d dB relative to the co-polar field",meas_cross)
