clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
NA=10^17 //cm^-3
d=8*10^-7//cm
VG=3//V
//2*phis=p
p=0.84//V
Co=epsilonx*3.9/d
disp(Co,"Co in F/cm^2 is=")
K=sqrt((epsilonx*11.9*NA*q))/Co
disp(K,"K is=")
Vdsat=VG-p+K^2*(1-sqrt(1+(2*VG/K^2)))
disp(Vdsat,"Vdsat in V is=")

