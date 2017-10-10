
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.4
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Eg1=1.43;//Band Gap Energy of photodetector in eV
Eg2=[(1.43*1.6*10^-19)];//Band Gap Energy in joule

lamdac=[(6.62*10^-34*3*10^8)/Eg2];//Cut-Off wave length in micrometer
mprintf("\n cut-off wave length is=%.2fum",lamdac*10^6);//multiplication by 10^6 to convert unit into um//the error is due to roundingoff

