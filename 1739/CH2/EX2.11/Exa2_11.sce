//Exa 2.11
clc;
clear;
close;
//Given data :
format('v',9)
delta=0.45;//relative refractive index difference in %
fi_o=0.115;//in Radian
c=3*10^8;//speed of light in m/s
//Formula : NA=sin(fi_o).....(max)
NA=sin(fi_o);//Numerical Aperture(Unitless)
//Formula : NA=n1*sqrt(2*delta)
n1=NA/sqrt(2*delta/100);//unitless
//Formula : n1=c/v;
v=c/n1;//in m/s
disp("Speed of light in fibre core is "+string(v)+" m/s");