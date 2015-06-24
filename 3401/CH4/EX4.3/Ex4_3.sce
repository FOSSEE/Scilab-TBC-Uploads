clc

T1=300 //K
T2=450 //K
Nc=4.7*10^17 //cm^-3
N=7*10^18 //cm^-3
k=8.617*10^-5 //eV/K
a=k*T1*(T2/T1)
disp(a,'kT=%f eV\n\n')

ni=sqrt(Nc*N*exp(-1.42/(k*T1)))
disp(ni,'ni=%f cm^-3\n\n')

ni=sqrt(Nc*N*(T2/T1)^3*exp(-1.42/a))
disp(ni,'ni=%f cm^-3\n\n')
