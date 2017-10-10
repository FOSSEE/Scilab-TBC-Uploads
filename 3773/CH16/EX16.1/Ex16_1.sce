//Chapter 16: Practical Design Considerations of Large Aperture Antennas
//Example 16-2.1
clc;

//Variable Initialization
delta = 1/20.0        //rms deviation (lambda)

//Calculations
del_phi = 4*%pi*delta*180/%pi //Phase error (degrees)
kg = cos(del_phi*%pi/180)**2        //Gain-loss (unitless)
kg = 10*log10(kg)           //Gain-loss (dB)

//Result
mprintf("The gain reduction is %.1f dB",abs(kg))
