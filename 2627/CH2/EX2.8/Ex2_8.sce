//Ex 2.8
clc;clear;close;
format('v',5);
c=400;//mm(circumference)
A=500;//mm^2(Cross sectional area)
N=200;//turns
mu0=4*%pi*10^-7;//constant
L=mu0*A*10^-6*(N^2)/(c*10^-3)*10^6;//micro H
disp(L,"Inductance(micro H)");
