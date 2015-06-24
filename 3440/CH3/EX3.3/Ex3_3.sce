clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
a=10^20// cm^-4
W=0.809*10^-4
epsilonx=8.85*10^-14
epsilonm=((q*a*W^2)/(8*epsilonx*11.9))
disp(epsilonm,"epsilonm in V/cm =")
