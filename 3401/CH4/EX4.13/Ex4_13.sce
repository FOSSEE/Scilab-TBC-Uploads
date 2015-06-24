clc

T=300 //K
Na=10**16 //cm^-3
Nc=2.8*10**19 //cm**-3
k=8.617*10^-5 //eV/K

//a=Ec-Ef
a=0.20 //eV
//Ec-Ef=k*T*log(Ne/(Nd-Na))
//Nd-Na=Nc*exp(-(Ec-Ef)/k*T)

Nd=Na+Nc*exp(-a/(k*T))
disp(Nd,"Nd in cm^-3 is= ")
