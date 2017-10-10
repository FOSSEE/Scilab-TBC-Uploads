


//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 3.3
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given

lamda=1.3;//wavelength in mm
d=6;//diameter of the fiber in um
alphadb=0.5//attenuation in dB
deltatau=0.6;//laser source bandwidth in GHz
Pb=(4.4*10^-3)*(d*d)*(lamda*lamda)*(alphadb)*(deltatau);//threshold optical power level for Brillouin scattering in watts
Pr=(5.9*10^-2)*(d*d)*(lamda)*(alphadb);//threshold optical power level for Raman Scattering in watts
mprintf("\n Threshold optical power level for Brillouin scattering is =%.2f mW",Pb*1e3);//multiplication by 1e3 to convert unit from w to mW
mprintf("\n Threshold optical power level for Raman scattering is= %.2f W",Pr);

