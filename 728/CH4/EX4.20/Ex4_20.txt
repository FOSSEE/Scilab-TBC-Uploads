//Caption:Calculate the maximum power handling capacity
//Exa:4.21
clc;
clear;
close;
c=3*10^10;//in cm/s
f=9*10^9;//inHz
a=3;//in cm
b=1;//in cm
E_max=3000;//in V/cm
wl_o=c/f;
wl_c=2*a;//in TE10
wl_g=ceil (wl_o/sqrt(1-(wl_o/wl_c)^2));
P_max=(6.63*10^-4)*E_max^2*a*b*(wl_o/wl_g);
disp(P_max/1000,'Maximum power for rectangular waveguide (in kilowatts)=');