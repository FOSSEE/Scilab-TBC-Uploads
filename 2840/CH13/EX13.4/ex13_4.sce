clc;
clear all;
u0=4*%pi*1e-7;
b=9.27*1e-24;
H=1e3;//homogeneous field
k=1.38*1e-23;//boltzmann constant
T=303;//temp in kelvin
T1 = T - 273; // Temp In Degree
x=u0*b*H/(k*T);//avg magnetic moment
disp('bohr magneton/spin',x,'avg magnetic moment is=');
