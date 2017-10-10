//chapter 6 example 7//
clc
clear
//charge of electron=e,diode current=Id,plancks constant=h,effeciency=n,wavelength=l,area=A,noise equivalent power=NEP,directivity=D//
h=6.62*(10^-34);
c=3*(10^8);//in mts per sec//
e=1.6*(10^-19);//charge of the electron//
l=1.2*(10^-6);//in mts//
Id=10*(10^-9);//in amperes//
n=0.6;
NEP=((h*c*sqrt(2*e*Id))/(n*e*l))*(10^14);
printf("\n noise equivalent power=%f*(10^-14) W\n",NEP)
A=100*50*(10^-12);
D=(A^0.5)/(NEP*(10^-14));
printf("\n directivity=%f mHz1/2W-1\n",D)
