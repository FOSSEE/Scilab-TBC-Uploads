clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
esp=11.7
esp0=8.85*10^-14 
phibe=0.67 //V
Jst=6*10**-5 //A/cm^2

A=exp(phibe/(k*T))*(Jst/T^2)
disp(A,"Richardson constant in A/K^2-cm^2 is=")     //textbook ans is different

