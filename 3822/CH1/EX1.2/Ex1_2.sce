
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 1.2
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
NA=0.3;//numerical aperture of the optical fiber
na=1;//refractive index of air
Alpham=(asind(NA));//acceptance angle for the meridional rays
gamma0=45;//in degrees
Alphasm=(asind(NA)/cosd(gamma0));//acceptance angle for skew rays
mprintf("\n Acceptance angle for the meridional rays is= %.2f degrees",Alpham);
mprintf("\n Acceptance angle for the skew rays is = %.2f degrees",Alphasm);
//The answer vary due to rounding
