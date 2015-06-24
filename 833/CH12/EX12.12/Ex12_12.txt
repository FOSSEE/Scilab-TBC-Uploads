//Caption:Find the dimensions of D and L
//Exa:12.12
clc;
clear;
close;
P=7.5//Power of induction motor(in KW)
p=4//Number of poles
f=50//frequency(in hertz)
V=415//Voltage applied of motor(in volts)
e=0.88//Efficiency
pf=0.87//Power factor
b=2.5//Ratio of pull out torque to full load torque
c=1.75//Ratio of starting to full load torque
n=1440//Speed of motor(in r.p.m)
ac=23000//Ampere conductors per meter
k=0.955
B=0.45//flux per pole(in wb/m^2)
n_s=(120*f)/(60*p)
S=P/(e*pf)
D=165//Choosing(in mm)
L=(S*(10^3))/(1.11*k*(%pi^2)*B*ac*n_s*(10^(-3))*(D^2)*(10^(-6)))
disp(L,D,'D and L(in mm) are=')