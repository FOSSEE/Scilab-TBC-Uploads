// Example 18.8, page no-464
clear
clc
N=5*10^28 //m^-3
alfe=2*10^-40 //F m^2
eps=8.854*10^-12
P=N*alfe
E_ratio=1/(1-(P/(3*eps)))
printf("The ratio of the internal field to the applied field = %.4f",E_ratio)
