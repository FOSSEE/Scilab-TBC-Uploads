//Exa 4.16
clc;
clear;
close;
//Given data :
r=15/2;//mm
d=1.5*1000;//mm
l=30;//km
epsilon_o=8.854*10^-12;//permitivity
C=%pi*epsilon_o/log(d/r)*l*1000;//F
disp(C*10^6,"Capacitance of line(micro F)");
