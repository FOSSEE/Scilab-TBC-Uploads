// Example 7.7, page no-164
clear
clc
sig=5.87*10^7
k=390//W/m-k
T=293
L=k/(sig*T)
printf("The Lorentz number is %.3f *10^-8 W.Ohm/K^2",L*10^8)
