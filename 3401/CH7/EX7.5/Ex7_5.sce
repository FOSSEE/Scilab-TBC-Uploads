clc

T=300//K
Na=10^16//  cm^-3
Nd=10^15// cm^-3
e=1.6*10^-19// eV
epsilon0=8.85*10^-14// F/m
epsilons=11.7
Vbi=0.635// V
Vr=5// V
C=((e*(epsilons*epsilon0)*Na*Nd)/(2*(Vbi+Vr)*(Na+Nd)))^0.5
A=10^-4// cm^2
C=C*A
disp(C,"the value of c with cross section area in F is")
