//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.5
clc;
clear;
//given

L=100;//given assumed fiber optic length in km
deltalambda=1;//spectral width wavelength in nm
Dlambda=2;//given chromatic dispersion parameter in ps/nm.km 


BRchrom = 1/(4*Dlambda*deltalambda*L);//maximum bit rate limited by chromatic dispersion in 10^12(bps)
mprintf("Maximum bit rate limited by chromatic dispersion= %.2f Gbps",BRchrom*1e3);//multiplication by 1e3 to convert unit into Gbps from 10^12(bps)
