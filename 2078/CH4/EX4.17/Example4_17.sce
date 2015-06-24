//Exa 4.17
clc;
clear;
close;
//Given data :
r=2/2;//cm
d=2.5*100;//cm
l=100;//km
epsilon_o=8.854*10^-12;//permitivity
C=2*%pi*epsilon_o/log(d/r)*l*1000;//F
disp(C*10^6,"Capacitance of line(micro F)");
