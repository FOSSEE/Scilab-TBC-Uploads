
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 11.3
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
n1=1.45//refractive index of core
delta=0.01;//relative refractive index difference
Br=50e6;//data rate in bps
C=3e8// velocity of light in m/s
//for step index fibre
Lmaxs1=0.35*C/(delta*n1*Br);//modal dispersion limited transmission distance in meter for step index fiber
mprintf("\n The modal dispersion limited transmission distance for step index fiber is=%.2f m",Lmaxs1);
//for graded index fibre

Lmaxc1=1.4*C*n1/(delta*n1*Br);;//modal dispersion limited transmission distance in meter for graded index fiber
mprintf("\n The modal dispersion limited transmission distance for graded index fiber is=%.2f m",Lmaxc1);
