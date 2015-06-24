clear;
clc;
T=290; // temperature in kelvin
k=1.38*10^(-23); // Boltzman constant
B=1;// bandwidth in MHz

P=k*T*B*10^(6); // thermal noise power
disp("the thermal noise power (in watts) is ");
disp(P);
