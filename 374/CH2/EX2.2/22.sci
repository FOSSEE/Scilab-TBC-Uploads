//chapter2.example.2//
//core refractive index of step index fibre=n1,relative index difference between core and cladding=d,wavelength=l,core diameter of step index fibre=a,v parameter for single mode operation=V//
clc
clear
n1=1.48;
d=0.015;
l=0.85*(10^-6);//in metres//
h=sqrt(2*d);
V=2.405;
z=(V*l)/(2*%pi*n1);
a=(z/h)*(10^6)*2;
printf("\maximum core diameter for single mode operation=%f*(10^-6)mts.\n",a);
//new maximum core diameter for single mode operation=a1,new relative index difference between core and cladding=d1//
d1=0.0015;
h1=sqrt(2*d1);
a1=(z/h1)*(10^6)*2;
printf("\n new maximum core diameter for single mode operation=%f*(10^-6)mts.\n",a1);