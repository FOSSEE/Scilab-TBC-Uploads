clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
ND=5*10^16//cm^-3
epsilonx=8.854*10^-14 //F/cm
epsilonc=5.7*10^5//F/cm
Vb=(epsilonx*11.9*epsilonc^2)/(ND*2*q)
disp(Vb,"Vb breakdown in V=")
