//chapter-10 page 490 example 10.13
//==============================================================================
clc;
clear;

l=1;//(Assume)-dimension(wavelength) in cm

//CALCULATION
x=5*l;//given square aperture of an optimum horn antenna as a side dimension in cm
A=x*x;//Area in sq.cm
Gp=4.5*(A/l^2);//Power gain of an optimum horn antenna

//OUTPUT
mprintf('\nPower gain of an optimum horn antenna is Gp=%3.1f ',Gp);

//=========================END OF PROGRAM===============================
