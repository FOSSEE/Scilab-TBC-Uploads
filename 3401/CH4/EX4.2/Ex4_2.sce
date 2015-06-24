clc

T1=400 //K
T2=300 //K
N=1.04*10^19 //cm^-3
k=8.617*10^-5 //eV/K

Nv=N*(T1/T2)^(3/2)
disp(Nv,'Nv=%f cm^-3\n\n')

a=k*T2*(T1/T2)
disp(a,'kT=%f eV\n\n')

//p0=Nv*exp(-(Ef-Ev)/kT)
p0=Nv*exp(-0.27/a)
disp(p0,'p0=%f cm^-3 \n')
