clc

T=300 //K
Nn=2.8*10^19 //cm^-3
Np=1.04*10^19 //cm^-3
//a=Ef-Ev
an=0.25 //eV
ap=0.87 //eV
k=8.617*10^-5 //eV/K

n0=Nn*exp(-an/(k*T))
disp(n0,"n0 in cm^-3 is=")

p0=Np*exp(-ap/(k*T))
disp(p0,"p0 in cm^-3 is=")
