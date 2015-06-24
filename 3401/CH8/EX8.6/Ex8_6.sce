clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Vt=0.0259 //v
lp0=10^-3 //A
taup0=10^-7 //s
Idq=1*10**-3//A

Cd=(1*lp0*taup0)/(2*Vt)
disp(Cd,"diffusion capacitance in F is= ")

vd=(Vt/Idq)
disp(vd,"diffusion in ohm is= ")
