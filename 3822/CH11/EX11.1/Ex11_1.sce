
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

u=L/C;
v=delta_lamda/lamda;
delta_t_mat=u*v*0.023;//dispersion delay when length is 1.25 km
mprintf("The dispersion delay when length is 1.25 km=%.2f ns",delta_t_mat*1e9);
