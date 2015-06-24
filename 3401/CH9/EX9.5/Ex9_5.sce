clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
esp=11.7
esp0=8.85*10^-14 
phibe=0.67 //V
A=114 //A/K^2-cm^2
Na=10^18 //cm^-3
Nd=10^16 //cm^-3
taup0=10^-7
taun0=10^-7
Dp=10 //cm^2/s
Dn=25 //cm^2/s
Lp=1.0*10**-3 //cm
Ln=1.58*10**-3 //cm
pn0=2.25*10**4 //cm^-3
np0=2.25*10**2 //cm^-3


a=k*T
Jst=(A*T^2)*exp(-phibe/a)
disp(Jst,"Richardson constant in A/K^2-cm^2 is=")

Js=((e*Dn*np0)/Ln)+((e*Dp*pn0)/Lp)
disp(Js,"reverse saturation current density in A/cm^2 is=")
