clc
clear

//INPUT
d=2*10^(-8);//diameter of the molecule in cm
k=1.38*10^(-6);//boltzmann constant in ergs/deg
t=273;//temperature at ntp in K
p=76*13.6*981;//pressure at ntp in gm/cm/sec^2

//CALCULATIONS
mf=((k*t)/(2^(0.5)*3.14*(d^2)*p));//mean free path in cm
//since p=nkt

//OUTPUT
mprintf('mean free path at ntp is %3.6fcm',mf)
