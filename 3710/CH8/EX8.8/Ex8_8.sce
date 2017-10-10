//Example 8.8, Page Number 387
//Single Mode Fiber in graded index fibers
clc;

n1=1.48//refractive index
n2=1.46//refractive index 
NA=0.242//numerical aperture
l=1.5*(10**-6) //Wavelength of radiation in meters

//From equation 8.27
a=(2.405*l)/(2*%pi*NA) // a is the maximum core radius in meters

disp(a,"The Maximum Core Radius is less than(in meters)")

//With NA=0.1
NA=0.1
a=(2.405*l)/(2*%pi*NA) //a is the maximum core radius in meters

disp(a," The Maximum Core radius increase in m:")
mprintf(" With a design criterion of V=2 the core diameter would then be 9.5 um")
