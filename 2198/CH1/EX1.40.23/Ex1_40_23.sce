//Ex 1.40.23
clc;clear;close;
format('v',9);

//Given : 
t=0.46*10^-4;//cm
E=2;//eV
alfa=5*10^4;//cm^-1
Io=10;//mW
q=1.6*10^-19;//Coulomb
It=Io*exp(-alfa*t);//mW
Pabs=Io-It;//mW
disp(round(Pabs),"(a) Absorbed power(mW) : ");
Eg=1.43;//eV(Band gap)
heat_fraction=(E-Eg)/E;
E_heat=heat_fraction*Pabs*10^-3;//J/s(energy converted to heat)
disp(E_heat,"(b) Rate of excess thermal energy(J/s) : ");
photons=Pabs*10^-3/q/E;//no. of photons per sec
disp(photons,"(c) No. of photons per sec : ");
