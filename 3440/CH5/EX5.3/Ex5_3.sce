clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=10^17//cm^-3
d=5*10^-7//cm
Co=6.9*10^-7
Qf=5*10^11//cm^-2
Qm=0
Qot=0
epsilonx=8.854*10^-14 //F/cm
phims=-0.98 //V
Vfb=phims-(Qf*q+Qm+Qot)/Co
disp(Vfb,"Vfb in V is= ")
