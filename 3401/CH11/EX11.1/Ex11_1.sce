clc

T=300//K
Na=10^16// cm^-3
ni=1.5*10^10 // cm^-3
epsilon0=8.85*10^-14// F/m
epsilons=11.7
e=1.6*10^-19// eV
Vt=0.0259 // V
phifp=Vt*log(Na/ni)
disp(phifp,"the value of phisp in V is")
xdT=(4*(epsilons*epsilon0)*phifp/(e*Na))^0.5
disp(xdT,"the value of xdT in meter is")
