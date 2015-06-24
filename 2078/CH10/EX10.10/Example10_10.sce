//Exa 10.10
clc;
clear;
close;
//Given data :
wc=0.35;//kg/m
stress=800;//kg/cm^2
L=160;//m
SF=2;//safety factor
h=70-65;//m
T=stress/SF;//kg
x=L/2+T*h/(wc*L);//m
disp(x,"Distance of lowest point(m)");
S1=wc*x^2/SF/T;//max sag in air
xmin=70-S1;//m
disp(xmin,"minimum point of catenary above the ground(m)");
