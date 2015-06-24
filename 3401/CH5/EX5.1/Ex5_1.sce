clc

Nd=10**16 //cm^-3
Na=0
ni=1.8*10**6 //cm^-3
T=300 //K
k=8.617*10^-5 //eV/K
E=10 //V/cm^2
e=1.6*10**-19
un=8500

n0=((Nd-Na)/2)+sqrt((((Nd-Na)/2)^2)+ni^2)
disp(n0,"n0 in cm^-3 is")

p0=(ni^2)/n0
disp(p0,"p0 in cm^-3")

//Jdrf=e*(un*n0+up*p0)*E= e*un*Nd*E
Jdrf=e*un*Nd*E
disp(Jdrf,"Jdrf in A/cm^2 is= ")

