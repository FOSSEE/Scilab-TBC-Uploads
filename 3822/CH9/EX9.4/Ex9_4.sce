
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 9.4
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
alpham=26.1;//angular limit of far field pattern in degrees
NA=sind(alpham);//numerical aperture 
L=16.7;//length of picture in cm

AB=(L/2)/[tand(alpham)];//distance from the screen in cm
mprintf("The numerical appertur is=%.2f ",NA);
mprintf("\nThe distance from the screen is=%.2f cm",AB);
//th answer vary due to rounding
