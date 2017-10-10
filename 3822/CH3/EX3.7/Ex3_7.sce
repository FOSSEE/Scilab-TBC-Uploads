


//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 3.7
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
C=3*10^8;//speed of light in m/s
lamda=0.85*10^-6;//wavelength in m
SW=0.003*10^-6;//spectrum width in m
Ym=0.021;//material dispersion parameter (ps/Km.nm)
Gamma=SW/lamda;
taubyZ=(Gamma/C)*(Ym)//in ns/Km
deltafZ=(C)/(4*Gamma*Ym);//Bandwidth distance product in GHz.Km
mprintf("\n Bandwidth distance product is =%.0fGHz.Km",deltafZ/1e12);//division by 1e9 to convert unit to GHz.Km from Hz.m
