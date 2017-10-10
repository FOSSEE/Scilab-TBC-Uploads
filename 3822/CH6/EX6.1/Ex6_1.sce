
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 6.1
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
eta=0.70;//quantum efficiency 
E=2.2*10^-19;//energy of the photons in Joule
Ip=2*10^-6;//photocurrent in A //the value in question is different from that used in solution in question it is mA and in solution it is uA
h=6.62*10^-34;//Planck's constant in SI units
c=3*10^8;//speed of the light in m/s
e=1.9*10^-19;//electric charge in coulomb
lamda=(h*c)/E;//operating wavelength of the photodiode in m
f=c/lamda;//frequency in Hz
R=(eta*e)/(h*f);//Responsivity in A/W
Po=Ip/R;//incident power in W
mprintf("\n Operating wavelength of the photodiode is= %.2f um",lamda*1e6);//multiplication by 1e6 for conversion of unit from m to um
mprintf("\n Incident power is =%.2f uW",Po*1e6);//multiplication by 1e6 for conversion of unit from W to uW
