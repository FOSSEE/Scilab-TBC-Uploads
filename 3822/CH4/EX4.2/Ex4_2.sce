
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 4.2
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
NA=0.18;//numerical aperture
RD=30;//radiance of the source in W/Sr/cm^2
d=50*10^-4;//core diameter in cm
R=0.01;//Fresnel reflection coefficient
a=d/2;//radius of the core in cm
A=%pi*((a)^2);//emission area of the source in cm^2
Pc=%pi*(1-R)*A*RD*((NA)^2);//optical power coupled to the fiber in W
mprintf("\n Optical power coupled to the fiber is =%.0f uW",Pc*1e6);//multiplication by 1e6 for conversion of unit from W to uW//the answer given in textbook is wrong
