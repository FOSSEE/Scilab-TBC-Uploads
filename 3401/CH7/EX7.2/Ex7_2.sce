clc

T=300//K
Na=10^16// cm^-3
Nd=10^15// cm^-3
e=1.6*10^-19// eV
epsilon0=8.85*10^-14// F/m
epsilons=11.7
Vbi=0.635// V
W=(((2*(epsilons*epsilon0)*Vbi)/e)*((Na+Nd)/(Na*Nd)))^0.5
disp(W,"W spacing charge width in meter is")
xn=0.864*10^-4// xp=0.086 micro m 
Emax=-e*Nd*xn/(epsilons*epsilon0)
disp(Emax,"the value of Emax in V/cm is")
