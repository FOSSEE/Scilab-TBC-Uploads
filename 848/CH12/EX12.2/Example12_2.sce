//clear//
//Caption: Calculation of Stimulated Brillouin Scattering(SBS) threshold power
//Example12.2
//page 433
clear;
clc;
close;
delta_VB = 20e06; //Brillouin linewidth in Hz
Aeff = 55e-12; //effective cross-sectional area of the propagating wave in square meter
Leff = 20e03; //effective length
b = 2;//polarization factor
gB = 4e-11;//Brillous gain coefficient m/W
delta_Vsource = 40e06; //optical source linewidth in Hz
Pth = 21*(Aeff*b/(gB*Leff))*(1+(delta_Vsource/delta_VB));
disp(Pth*1e03,'SBS threshold power in milli watts Pth=')
//Result
//SBS threshold power in milli watts Pth=  8.6625 
