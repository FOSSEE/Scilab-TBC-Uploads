
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 6.3
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
eta=0.65;//quantum efficiency
E=1.5*10^-19;//energy of the photons in V
Ip=3*10^-6;//diode current in A
h=6.62*10^-34;//Plank's constant in SI unit
c=3*10^8;//speed of the light in m/s
e=1.9*10^-19;//electric charge in coulomb
lamda=(h*c)/E;//wavelengthof the operating diode in m
f=c/lamda;//frequency in Hz
R=(eta*e)/(h*f);//responsivity in A/W
Po=Ip/R;//incident optical power in W
mprintf("\n Operating wavelength is =%.2f um",lamda*1e6);//multiplication by 1e6 for conversion of unit from m to um
mprintf("\n Incident optical power is =%.2f uW ",Po*1e6);//multiplication by 1e6 for conversion of unit from W to uW//the answer vary due to rounding
