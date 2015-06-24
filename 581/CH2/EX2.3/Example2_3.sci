
clear;
clc;

printf("\t Example 2.3\n");

l=1; // tube length, m
m=0.01; // mass fraction
D12=2.84*10^-5; // diffusivity, m^2/s
a=1.18; // density, kg/m^3

J=a*D12*m/l;
//steady state flux of water from one side to the other,kg/(m^2*s) 
printf("\t steady flux of water is %.2e kg/(m^2*s)",J);
//end