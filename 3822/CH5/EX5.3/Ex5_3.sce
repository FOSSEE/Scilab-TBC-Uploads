
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 5.3
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Br=7.21*10^-10;//injected electron density
Pn=10^18;//majority carrier hole density in/cm^3
Gamar=1/(Br*Pn);//minority carrier life time
mprintf("\n Minority carrier life time is =%.2f ns ",Gamar*1e9);// the answer vary due to roundingoff
//multiplication by 1e9 to convert the unit to nm
