clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
m0=0.91*10^-30//kg
n=10^16//cm^3
W=500*10**-4//cm
A=2.5*10**-3//cm62
I=10**-3//A
Bz=10^-4//Wb/cm^2

RH=1/(q*n)
disp(RH,"Hall coefficient in cm^3/C is")
VH=W*RH*I*Bz/A
disp(VH,"Hall voltage in V is")

