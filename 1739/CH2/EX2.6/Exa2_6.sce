//Exa 2.6
clc;
clear;
close;
//Given data :
v=2*10^8;//in m/s
fi_c=60;//in degree
//Part (a)
//Formula : v=c/n;
c=3*10^8;//in m/s
n1=c/v;//unitless
disp(n1,"Refractive index of core : ");
//Formula : sin(fi_c)=n2/n1;
n2=n1*sin(fi_c*%pi/180);//unitless
disp(n2,"Refractive index of cladding :");
//Part (b)
NA=sqrt(n1^2-n2^2);//Unitless
disp(NA,"Numerical Aperture : ");