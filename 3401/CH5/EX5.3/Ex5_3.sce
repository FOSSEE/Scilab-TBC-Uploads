clc

V=5 //v
R=10*10^3 //ohm
J=50 //A/cm^2
E=100
Na=1.25*10**16 //cm^-3
Nd=5*10**15 //cm^-3
e=1.6*10**-19 //C
up=410 //cm**2/Vs

I=V/R
disp(I,"I current in Ampere is=")

A=I/J
disp(A,"A cross sectional area in cm^2 is=")

L=V/E
disp(L,"L length of resistor in cm is= ")

sigma=L/(R*A)
disp(sigma,"sigma conductivity in per ohm cm is=")

//sigma=e*up*p0=e*up*(Na-Nd)
sigma=e*up*(Na-Nd)
disp(sigma,"sigma conductivity in per ohm cm is=")

