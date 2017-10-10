//chapter 6 example 8//
clc
clear
//optical gain=Go,charge of the electron=e,speed of the light=c,current supplied=Ic,wavelength=l,common emitter current gain=hFE,effeciency=n//
h=6.62*(10^-34);
c=3*(10^8);//in mts per sec//
e=1.6*(10^-19);//charge of the electron//
l=1.25*(10^-6);//in mts//
Po=130*(10^-6);//in watts//
Ic=16*(10^-3);//in ampers//
Go=(h*c*Ic)/(e*l*Po);
printf("\n a) optical gain of the transistor=%f \n",Go)
n=0.45;
hFE=Go/n;
printf("\n b) common emitter current gain=%f \n",hFE)