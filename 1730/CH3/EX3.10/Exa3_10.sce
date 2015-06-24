//Exa3.10
clc;
clear;
close;
// given data
e=1.6*10^-19;//in C
miu_e=.38;// in m^2/V-s
miu_h=.18;// in m^2/V-s
l=25;// in mm (length)
l=l*10^-3;// in m 
w=4;// in mm (width)
w=w*10^-3;// in m
t=1.5;// in mm (thickness)
t=t*10^-3;// in m
V=10;// in V
l=25;// in mm
l=l*10^-3;//in m
E=V/l;
//(i) 
v_e=miu_e*E;
v_h=miu_h*E;
disp("Electron drift velocity is : "+string(v_e)+" m/s");
disp("Hole drift velocity is : "+string(v_h)+" m/s");
n_i=2.5*10^19;//in /m^3
//(ii)
sigma_i=n_i*e*(miu_e+miu_h);
disp("Intrinsic conductiviry of Ge is : "+string(sigma_i)+" /ohm-cm");
//(iii)
a=w*t;
I=sigma_i*E*a;// in amp
I=I*10^3;// in m A
disp("Total current is : "+string(I)+" mA");
