clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
NA=10^17 //cm^-3
d=8*10^-7//cm
VFB=-1.1//V
Co=6.9*10^-7//F/cm^2
//2*phis=p
//Qf/q=m
p=0.84//V
m=5*10^11//cm^2
VT=VFB+p+(sqrt(2*epsilonx*11.9*q*NA*p)/Co)
disp(VT,"VT in V is=")
FB=(0.62*Co)/q
disp(FB,"FB in cm^-2 is=")

