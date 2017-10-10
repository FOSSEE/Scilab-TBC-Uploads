//chapter2.example.5//
clc
clear
//core refractive index=n1,cladding refractive index=n2,radius of core=a,operating wavelength=l,number of guided modes=M,ratio of power flow in the core and cladding=z//
n1=1.50;
n2=1.49;
a=30*(10^-6);
l=0.85*(10^-6);
h=(2*%pi*a)/l;
x=(n1^2)-(n2^2);
M=((h^2)*x)/2;
printf("\n number of guided modes=M=%f modes\n",M);
y=(4*(M^-0.5))/3;
g=1-y;
z=g/y;
printf("\n ratio of power flow in the core and cladding=%f\n",z);
