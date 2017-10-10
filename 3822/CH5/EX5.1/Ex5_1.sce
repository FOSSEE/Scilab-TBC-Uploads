

//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 5.1
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Tc=727;//temperature in celcius
lamda=0.5*10^-6;//wavength of emitting radiation in M
h=6.626*10^-34;//Plank's constant in SI units
KB=1.38*10^-23;//boltzman constant in SI units
c=3*10^8;//speed of light in m/s
f=c/lamda;//frequency in Hz
T=Tc+273;//temperature in kelvin
c1=(h*f)/(KB*T);//constant value
B21byA21Pf=1/(exp(c1)-1);//ratio of stimulated and spontaneous emission rate
mprintf("\n Ratio between stimulated and spontaneous emission is =%.1fx10^-13",B21byA21Pf*1e13); //multiplication by 1e13 to convert the ratio to 10^-13
