clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
m0=0.91*10^-30//kg
Dn=22.5//cm^2/sec
deltan=1*10^18-7*10^17//cm^-3
deltax=0.1//cm
Jn=q*Dn*(deltan/deltax)
disp(Jn,"diffusion current density in A/cm^2 is ")
