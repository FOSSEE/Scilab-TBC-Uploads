clc;
clear all;
f=25*1e6;//given signal frequency
C=10*1e-12;//given capacitance
L=126.25*1e-9;//given inductance
//part a
T=sqrt(L*C);//time delay for 1 foot cable
disp(T,'time delay for 1 foot cable')
//part b
vp=1/T;//propogation velocity
disp(vp,'propogation velocity is')
