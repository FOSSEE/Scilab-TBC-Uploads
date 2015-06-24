// Example 3.30: calculate the number of vacancies in the copper
clc;
clear;
close;
B=1.38*10^-23;//boltzman constant in J/atom-K
B1=8.62*10^-5;// bolzman constant in ev/atom-K
Qv=0.9;// eV/atom
t=27;// room temperatyre in degree celsius
pcu=8.4;//in g/cm^3
Acv=63.5;// in g/mol
T=t+273;//temperture in kelvin
Nv=6.023*10^23;//
P=8.4;//
Ns=(Nv*P)/Acv;// number of regular lattice sites
Nv1=Ns*exp(-Qv/(B1*T));//
disp(Nv1,"number of vacancies in copper in vacancies/cm^3")
//answer is wrong in the textbook
