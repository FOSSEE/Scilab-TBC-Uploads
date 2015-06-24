//Ex:8.10
clc;
clear;
close;
nt=0.20;// total efficiency
Eg=1.43;// bandgap energy in eV
V=2.2;// applied voltage in volts
nep=(nt*Eg)/V;// external power efficiency
Nep=nep*100;// percentage of external power efficiency
printf("The external power efficiency =%f %%", Nep);