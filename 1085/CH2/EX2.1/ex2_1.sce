//Exam:2.1
clc;
clear;
close;
Eg_k=5;//kinetic energy of alpha particles(in MeV)
Eg_K=5*(10^6)*1.6*(10^-19);//kinetic energy of alpha particles(in J)
mv2=2*Eg_K;
pi=22/7;
phi=180;//firing angle
Z=29;//Atomic number
e=1.6*(10^-19);//electron charge(in C)
Eo=8.85*10^-12;//permittivity of free space
d=(Z*e^2/(2*pi*Eo*mv2))*(1+cscd(90))//;
disp(d,'distance of the closest approach alpha particles from the copper nucleus(in meter)=');