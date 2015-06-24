// Example 8.5, page no-211
clear
clc
e1=0.01//eV
e=1.6*10^-19//C
ed=e*e1
T=200//K
E=1/(1+%e^(ed/(T*1.38*10^-23)))
printf("The Fermy distribution function for energy E is %.4f",E)
