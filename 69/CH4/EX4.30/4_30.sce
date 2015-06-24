clear; clc; close;

//lets say Rb/Re = x,then we have
x = 20;
Ic1 = 2*10^(-3);
beta1=50;
beta2=80;

s = (Ic1*(1+x))/(beta1*(1+beta2+x));
delta_ic = s*(beta2-beta1);

disp(delta_ic,'change in the level of Ic(amperes) is : ')
