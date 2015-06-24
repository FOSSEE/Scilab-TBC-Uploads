clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
ND=2*10^18//cm^-3
d1=40*10^-7//cm
d2=8*10^-7//cm
u=3*10^-7//cm
Va=0//V
//deltaEc/q=a
a=0.23//V
phibn=0.85//V
Vp=(q*ND*d1^2)/(2*epsilonx*12.3)
disp(Vp,"Vp in V is=")
VT=phibn-a-Vp
disp(VT,"VT in V is= ")
ns=((12.3*epsilonx)/(q*(d1+u+d2)))*(Va-VT)
disp(ns,"ns in cm^-2 is= ")
