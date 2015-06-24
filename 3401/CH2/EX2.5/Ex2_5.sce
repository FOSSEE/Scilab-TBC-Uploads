clc

E=2// eV
V0=20// eV
a=3*10^-10// a=3A = 3*10^-10 m
m=9.11*10^-31// kg*m/s
e=1.6*10^-19// eV
h=1.054*10^-34// J*s
K2=((2*m*(V0-E)*e)/(h*h))^0.5
disp(K2,"the value of K2 in m^-1 is")
T=16*(E/V0)*(1-E/V0)*exp(-2*K2*a)
disp(T,"the value of T is")
