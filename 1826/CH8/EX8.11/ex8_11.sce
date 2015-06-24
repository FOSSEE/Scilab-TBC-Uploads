// Example 8.11, page no-215
clear
clc
e=1.6*10^-19//C
Ed=0.5*e
k=1.38*10^-23
x=0.01
T=Ed/(k*log((1/x)-1))

printf("Temperature at which there is 1%% probability that a state with 0.5 eV energy occupied above the Fermi energy level is %.1f K",T)
