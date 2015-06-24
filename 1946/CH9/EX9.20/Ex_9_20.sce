// Example 9.20;//thickness
clc;
clear;
close;
A=1.5;//area in mili meter square
R=100;//resistance in ohms
Eo=1.04*10^-10;//F/m
Vd=10^7;//DRIFT VELOCITY IN m/s
w=round((sqrt(R*Eo*A*10^-6*Vd))*10^6);//thickness in micro meters
disp(w,"thickness in micro meters is")
