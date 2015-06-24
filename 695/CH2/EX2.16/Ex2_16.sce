//Caption:Find the (a)Flux per pole (b)total number of conductors (c) torque
//Exa:2.16
clc;
clear;
close;
I_a=50;//in amperes
P=6;//no.of poles
E_g=200;//in volts
N=1500;//speed in rpm
A=6;
L=0.25;//in meter
d=0.2;//in meter
B=0.9;//in tesla
Theta=360/P;//angle subtended by pole shoe in degrees
l=%pi*L*Theta/360;//arc length of pole shoe in meter
area=l*d;//in meter^2
Phy=B*area;
disp(Phy,'(a) Flux per pole (in Weber)=');
Z=ceil(E_g*60/(Phy*N));
disp(Z,'(b) Total no. of conductors=');
T=9.55*E_g*I_a/N;
disp(T,'(c) Torque (in Newton-meter)=')