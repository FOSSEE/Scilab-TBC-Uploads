//Example 1.2: 
clc;
clear;
close;
//given data :
ne=8*10^19;// in m^-3
nh=5*10^18;// in m^-3
mu_e=2.3;// in m^2/V-s
mu_h=.01;// in m^2/V-s
e=1.6*10^-19;// in V
p=1/(e*((ne*mu_e)+(nh*mu_h)));
format('e',8)
disp(p,"(b) the resistivity,p(ohm-m)=")
