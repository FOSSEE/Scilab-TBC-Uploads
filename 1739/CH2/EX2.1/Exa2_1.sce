//Exa 2.1 
clc;
clear;
close;
//Given data :
n1=1.40;//refractive index
delta=1;//relative refractive index difference in %
//Formula : n2/n1=1-delta
n2=n1*(1-delta/100);//refractive index(unitless)
disp(n2,"Refractive index of cladding : ");