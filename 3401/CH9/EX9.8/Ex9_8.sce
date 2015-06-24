clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
ni=2.4*10^13 //cm^-3
Na=7*10^18 //cm^3
Nd=10^16 //cm^-3
pp0=6*10^18 //cm^-3
esp=11.7
esp0=8.85*10^-14 
xn=4.13
xp=4.07

//AE1=e*(xn-xp)
AE=(xn-xp)
disp(AE,"AE in eV is=")

deltaE=1.43-0.67

AE1=deltaE-AE
disp(AE1,"AE1 in eV is= ")

pn0=(ni^2)/Nd
disp(pn0,"pn0 in cm^-3 is=")

Vbi=AE1+(k*T)*log((Nd*pp0)/(pn0*Na))
disp(Vbi,"Vbi in V is=")

