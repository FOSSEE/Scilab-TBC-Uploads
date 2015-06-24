clc

T=300 //K
Nc=2.8*10^19 //cm^-3
k=8.617 *10^-5 //eV K^-1 
//E=Ec
//a=Ec-Ef
a=-0.25
//fF(E)=1/(1+exp(Ec-Ef/kT)) =exp(-(Ec-Ef)/kT)
//b=k*T
//disp(b)
c=k*T
fFE=exp(a/c)
disp(fFE,"fF(E) value is=")
n0=Nc*exp(-a/(k*T))
disp(n0,"n0 value in cm^-3 is")
