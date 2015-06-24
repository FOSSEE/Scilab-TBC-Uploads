//Estimate Saturation Magnetisation
//Ex:14.6
clc;
clear;
close;
b=9.27*10^-24;//Bohr Magneton in A/sqm
m=0.6*b;
a=0.35*10^-9;
n=4;//FCC
m_g=n*m/a^3;//in A/m
disp(m_g,"Saturation Magnetisation (in A/m) =");