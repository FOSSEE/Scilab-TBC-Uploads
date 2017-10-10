//chapter 3 example 6//
clc
clear
//core refractive index=n1,relative refractive index difference=d,core radius=a,operating wavelength=l;waveguide dispersion=W.speed of light=C//
l=1.3*(10^-6);//in meters//
a=4.5*(10^-6);//in meters//
d=0.0022;
n1=1.48;
V=((2*%pi*a*n1)*(sqrt(2*d)))/l;
n2=n1*(1-d);
C=(3*(10^8));
S=0.480;//product of V and its double differentiation wrt v//
W=(-1*n2*d*S)/(C*l)*(10^6);//wave guide dispersion//
printf("\n wave guide dispersion=%f ps Km-1 nm-1\n",W);
