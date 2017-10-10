
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 9.7
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
P1=100;//power at the input in microwatts
P2=83.2;//power at the output in microwatts
P3=35.5;//power at the ouput after connector in microwatts
L=1.8;//length of the added fibre in Km
alpha=1.5;//fiber attenuation in dB/L;

//case 1:
Ls=-10*log10(P2/P1);//insertion loss of connector in dB
mprintf("\n The insertion loss of connector is=%.2f dB",Ls);

//case 2:
deltaLs=-10*log10(P3/P1)-Ls-alpha*L;//excess loss of the connector
mprintf("\n The excess loss of connector is=%.2f dB",deltaLs);
