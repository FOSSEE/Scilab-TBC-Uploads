clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
ND=2*10^15//cm^-3
Nc=4.7*10^17//cm^-3
a=0.6*10^-4
fbn=0.89//V
Vp=(q*ND*a^2)/(2*epsilonx*12.4)
disp(Vp,"Vp in V is=")
Vn=(k*T)*log(Nc/ND)
disp(Vn,"Vn in V is=")
Vbi=fbn-Vn
disp(Vbi,"Vbi in V is=")
