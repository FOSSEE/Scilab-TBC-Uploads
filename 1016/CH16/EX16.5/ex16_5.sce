clc;clear;
//Example 16.5

//given data
B=0.5;//magnetic field in Wb/m^2
d=1.5;//diameter in m
f=59;//frequency in Hz
e=1.6*10^-19;//the charge on electron in C
c=3*10^8;//speed of light in m/s
pi=3.14;//const

//calculations
R=d/2;
N=c/(4*(2*pi*50)*R);
E=B*e*R*c/(1.6*10^-13);
disp(E,'final energy in MeV');
AE=E/N*10^6;
disp(AE,'average energy in eV')