//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 6.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Lambda=632.8e-9;//Wavelength of the laser in m
F=1;//Focal ratio of the lens
Prad=10e-3;//Power radiated by the laser in W

rs=2*Lambda*F/%pi;//Radius of the focused spot in m
mprintf("\n rs = %.1e m",rs);

//Let the power per unit area in  W m^-2  be P
P=Prad/(%pi*(rs)^2);
mprintf("\n P = %.1e W m^-2",P);
