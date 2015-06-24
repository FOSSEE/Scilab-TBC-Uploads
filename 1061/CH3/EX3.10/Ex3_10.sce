//Ex:3.10
clc;
clear;
close;
n1=3.6;// core refractive index
n2=3.56;// cladding refractive index
y=0.85*(10^-6);// wavelength in um
m=1;
n=0;
v_c=2.405;// for planner guide
a=(v_c*y)/(2*%pi*sqrt(n1^2-n2^2));// core radius in micrometer
printf("the max thickness=%f um",a*10^6);