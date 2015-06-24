clc

T=300//K
ni=1.5*10^10// cm^-3
Nd=10^15// cm^-3
Vbi=0.855// V
e=1.6*10^-19// eV
k=1.3806*10^-23// JK^-1
S=1.32*10^15// Slope=1.32*10^-15 (F/cm^2)^-2*(V)-1
epsilon0=8.85*10^-14// F/m
epsilons=11.7
Nd=2/((e*(epsilons*epsilon0))*S)
Na=((ni*ni)/Nd)*exp((e*Vbi)/(k*T))
disp(Na,"the value of Na in cm^-3 is")
