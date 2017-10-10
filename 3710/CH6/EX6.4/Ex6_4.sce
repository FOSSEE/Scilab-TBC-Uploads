//Example 6.4, Page Number 260
//Beam collimation
clc;

//Considering a He-Ne Laser
d=3*(10**-3) //Diameter in meter
l=633*(10**-9) //Wavelength of the laser in meter

theta=l/d //theta is the divergence of the beam
mprintf("The Divergence of the Beam is %.1e rad\n",theta)

//After Collimation
theta=theta/30 //Reduced by a factor of 30
mprintf(" After Collimation,The angle of divergence is reduced to %.0e rad",theta)
