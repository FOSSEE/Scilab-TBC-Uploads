clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Js0=10^-11//A/cm^2
Jr0=10^-8//A/cm^2
delta=0.9967
VBE=2*k*T*log(delta*10^3/(1-delta))
disp(VBE,"VBE in V is=")

