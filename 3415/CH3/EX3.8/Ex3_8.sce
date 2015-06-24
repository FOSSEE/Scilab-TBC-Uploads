//fiber optic communications by joseph c. palais
//example 3.8
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n=1.5//refractive index of the glass

//to find
R=((1-n)/(1+n))^2*100//Fraction of relected light in percent
T=100-R//Transmitted light in percent
TL=-10*log10(T/100)//Transmission loss in dB
mprintf("Fraction of relected light =%f percent",R)
mprintf("\nTransmitted light =%f percent",T)
mprintf("\nTransmission loss =%fdB",TL)
