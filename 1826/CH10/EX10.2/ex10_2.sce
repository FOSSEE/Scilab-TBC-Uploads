// Example 10.2, page no-268
clear
clc
ni=1.45*10^10//cm^-3
nd=10^16//cm^-3
k=1.38*10^-23
T=300
e=1.6*10^-19//C
Ef=k*T*log(nd/ni)
Ef=Ef/e
printf("The Fermi energyy with respect to Ef in intrinsic Si = %.3f eV",Ef)
