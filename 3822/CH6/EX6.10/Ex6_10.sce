
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.10
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
E=1.15*(1.6e-19);//band gap energy in V
h=6.62e-34;//plank's constant in S.I units
c=3e8;//velocity of light in m/s


lamda_c=(h*c)/(E);//critical wavelength in meter
mprintf("The critical wavelength is=%.2f um",lamda_c*1e6);//multiplication by 1e6 to convert unit from m to um
//the answer vary due to roundingoff 
