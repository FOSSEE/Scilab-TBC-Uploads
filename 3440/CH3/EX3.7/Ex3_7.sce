clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
Lp=5*10^-4
V=1//V
ND=8*10^15 //cm^-3
ni=9.65*10^9//cm^-3
epsilonx=8.854*10^-14 //F/cm
Qp=q*Lp*(ni^2/ND)*(exp(V/(k*T))-1)
disp(Qp,"Qp in C/cm^2")   //textbook ans is wrong
