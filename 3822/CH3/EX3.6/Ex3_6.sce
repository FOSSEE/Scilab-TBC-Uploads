

//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 3.6
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given

n1=1.55;//refractive index of core
n2=1.51//refractive index of cladding
no=1//refractive index of air
C=3e8//velocity of light in m/s
deltan=n1-n2;//relative refractive index
NA=((n1+n2)*deltan)^0.5;//Numerical aperture
alpham=asind(NA)//acceptance angle in degrees
deltatbyZ=(n1/n2)*deltan/C//multiple time dispersionin s/m
mprintf("Numerical Aperture is=%.2f",NA);
mprintf("\nAcceptance angle is=%.2f degree",alpham)
mprintf("\nMultiple time dispersion is=%.2f ns/Km",deltatbyZ*1e12)//multiplication by 1e12 to convert unit from s/m to ns/Km
//the answer vary slightly due to rounding
