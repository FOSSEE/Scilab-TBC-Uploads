//Example 1.11: 
clc;
clear;
close;
//given data :
p=0.15;// in ohm-m
mu_e=0.39;// mobility of electron in m^2/V-s
e=1.6*10^-19;// in C
Na=1/(e*mu_e*p);
format('e',9)
disp(Na,"The value of donor concentration,Na(m^-3) = ")
