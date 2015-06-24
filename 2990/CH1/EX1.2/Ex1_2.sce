
clc; funcprot(0);
// Initialization of Variable
T=273+18.8;//temperature in K
p=713;//pressure mm of Hg
e=3;//vapour pressure mm of Hg
c=299792.5e3;//speed of light in km/s
f=11e6;//frequency in Hz
//calculation
n=1+(103.49/T*(p-e)+86.26/T*(1+5748.0/T)*e)/1e6;
V=c/n;
l=V/f;
disp(l,"wavelenght of light in m")
clear()
