//Example 1.8: 
clc;
clear;
close;
//given data :
e=1.6*10^-19;// in V
Pp=10^-1;// p-type silicon in ohm-m
Pn=10^-1;// n-type silicon in ohm-m
mu_h=0.05;// holes mobilities in m^2/V-s
mu_e=0.13;// electrons mobilities in m^2/V-s
Na=1/(e*mu_h*Pp);
Nd=1/(e*mu_e*Pn);
format('e',9)
disp(Na,"(i). the density of impurity,Na (m^-3) = ")
format('e',8)
disp(Nd,"(ii). the density of impurity,Nd (m^-3) = ")
