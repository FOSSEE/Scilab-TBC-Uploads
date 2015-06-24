clc

T=300//K
Na=10^16//  cm^-3
Nd=10^15// cm^-3
e=1.6*10^-19// eV
epsilon0=8.85*10^-14// F/m
epsilons=11.7
Vbi=0.635// V
Vr=5// V
W=(((2*(epsilons*epsilon0)*(Vbi+Vr))/e)*((Na+Nd)/(Na*Nd)))^0.5
disp(W,"the value of W in m is")
