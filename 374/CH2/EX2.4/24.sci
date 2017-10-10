//chapter2.example.4//
//core refractive index=n1,cut off value of V parameter for single mode operation=Vc,radius=a,cladding refractive index=n2,relative index difference between core and cladding=d,cut off wavelength=lc//
clc
clear
Vc=2.405;
n1=1.46;
d=0.0025;
a=5*(10^-6);//in metres//
h=sqrt(2*d);
x=(2*%pi*a*n1)/Vc;
lc=x*h*(10^6);
printf("\ncut off wavelength of the fibre=%f*(10^-6)mts.\n",lc);
