//Ex18_6 Pg-947
clc

A=10^(-6) //diode area in m
epsilon_r=11.7 //relative permitivity 
Nd=10^(21) //number of doping carriers
V=10 //bias potential in V
e=1.6*10^(-19) //electron charge in eV
epsilon_0=8.85*10^(-12) //permitivity of free space

Cj=A/2*sqrt(2*e*epsilon_r*epsilon_0*Nd)/sqrt(V)
printf("Diode capacitance = %.f pF",Cj*1e12)
//textbook answer is wrong
