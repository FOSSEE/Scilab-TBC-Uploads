//Example 1.4: 
clc;
clear;
close;
//given data :
e=1.6*10^-19;// in V
Pp=10^-2;// p-type silicon in ohm-m
Pn=10^-2;// n-type silicon in ohm-m
mu_p=0.048;// holes mobilities in m^2/V-s
mu_n=0.135;// electrons mobilities in m^2/V-s
Na=1/(e*mu_p*Pp);
Nd=1/(e*mu_n*Pn);
format('e',8)
disp(Na,"(i). the density of impurity,Na (m^-3) = ")
format('e',9)
disp(Nd,"(ii). the density of impurity,Nd (m^-3) = ")
