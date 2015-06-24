clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=5*10^16 //cm^-3
ND=10^16 //cm^-3
A=2*10^-4//cm^2
V=4//V
ni=9.65*10^9//cm^-3
epsilonx=8.854*10^-14 //F/cm
Dn=21//cm^2/sec
Dp=10//cm^2/sec
taup=5*10^-7//sec
taun=5*10^-7//sec
Lp=sqrt(Dp*taup)
Js=q*ni^2*[(1/ND)*sqrt(Dp/taup)+(1/NA)*sqrt(Dn/taun)]
disp(Js,"Js in A/cm=")
Is=A*Js
disp(Is,"Is in A =")

