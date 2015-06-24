//Example 4_21
clc;
clear;
close;
format('v',7);
//given data : 
h=1.05*10^-34;//Js//Planks Constant
n0=6.02*10^23;//atom/mole
n0=n0/72.6;//atom/gram
n0=n0*5.32;//atom/cm^3
ND=1/10^7*n0;//cm^-3
T=300;//K
//mc=1/2*mo
mcBYmo=1/2;
kBT=0.026;//eV//For T=300K
Nc=ND*(mcBYmo*T)^(3/2);//cm^-3
n0=ND;//cm^-3///Considering full ionization
EF=kBT*log(n0/Nc);//eV
disp(EF,"Position of fermi level(eV)")
