clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
alpha0=0.9933
Icbo=1*10^-6//A
beta0=alpha0/(1-alpha0)
disp(beta0,"beta0 =")
Iceo=(beta0+1)*Icbo
disp(Iceo,"Iceo in A =")

