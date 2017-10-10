
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 5.5
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
etaT=0.18//total efficiency
Eg=1.43//bandgap energy in eV
V=2.5//applied voltage in V
etae=etaT*Eg*100/V//external power efficiency
mprintf("\n External power efficiency =%.0f percent ",etae);
