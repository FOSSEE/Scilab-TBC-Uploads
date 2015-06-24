// Example 5.3:waveguide dispersion factor
clc;
clear;
close;
format('v',6)
n=1.45;//core refractive index
d=0.003;//differnce in core-cladding refrative index
n2=1.45*(1-d);//cladding refractive index
d1=8.2;//core diameter in micro meter
a=d1/2;//core radius in micro meter
h1=1.30;// inmicro meter
h2=1.55;//in micro meter
v1=(2*%pi*a*n*sqrt(2*d))/h1;//normalised frequency parameter
v2=((2*%pi*(a))*n*sqrt(2*(d)))/(h2);//normalised frequency parameter
v1dv=0.080+0.549*(2.834-v1)^2;//
v2dv=0.080+0.549*(2.834-v2)^2;//
c=3*10^8;// in m/s
dw1=-((n2*d*v1dv)/(c*h1))*10^12;//waveguide dispersion factor in ps nm^-1 km^-1
dw2=-((n2*d*v2dv)/(c*h2))*10^12;//waveguide dispersion factor in ps nm^-1 km^-1
disp(" waveguide dispersion factor is "+string(dw1)+"  in ps nm^-1 km^-1 at wavelength 1.3 micro meter")
disp(" waveguide dispersion factor is "+string(dw2)+"  in ps nm^-1 km^-1 at wavelength 1.55 micro meter")
