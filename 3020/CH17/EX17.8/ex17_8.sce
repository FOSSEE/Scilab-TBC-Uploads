clc;
clear all;
Tf=24600;//temperature in kelvin
m=9.11e-31;//mass of electron
k=1.38e-23;//boltzmann constant
Vf=sqrt(2*k*Tf/m);//fermi velocity 
disp('m/s',Vf,'fermi velocity is:')
