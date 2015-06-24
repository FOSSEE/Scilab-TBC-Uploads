// Exa 8.14
clc;
clear;
close;
// Given data
CO2= 10;// in %
O2= 6;// in %
N2= 84;// in %
// a= x/12 and b= (1-x)/2
// 0.23*y/32= a+b/2+c
abyc= CO2/O2;
// a/(0.77*y/28)= CO2/N2
x=0.835;
carbon_per= x*100;// in %
hydrogen_per= 100-carbon_per;// in %
disp("The fuel consists of  "+string(carbon_per)+" % carbon and "+string(hydrogen_per)+" % hydrogen.")

