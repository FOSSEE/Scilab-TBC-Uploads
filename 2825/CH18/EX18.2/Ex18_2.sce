//Ex18_2 Pg-945
clc

T=2000 //temperature in Kelvin
f=5*10^(14) // frequency in Hz
h=6.6*10^(-34) //planck constant
k=1.38*10^(-23) //Boltzmann constant

R=exp((h*f)/(k*T)) //ratio of spontaneous and stimulated emisson
printf("     R = %.2f*1e5",R*1e-5)
