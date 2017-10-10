
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 11.1
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
L=1.25e3;//length of the link in m
delta_lamda=45;//change in wavelength in nanometers
lamda=850;//perating wavelength of fibre in nanometer
C=3e8;//velocity of light in m/s
M=0.023;//value of material dispersion parameter
BR=1e7//bitate in bps
TB=1/BR//bit period in s
v=delta_lamda/lamda;
Lmax=0.35*TB*C/(M*v)//The material dispersion limited transmission distance

mprintf("The material dispersion limited transmission distance=%.2f Km",Lmax/1e3);
