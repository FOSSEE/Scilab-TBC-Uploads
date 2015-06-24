clc

T=300 //K
Nd=3*10**15 //cm**-3
Na=10**16 //cm**-3
k=8.617*10^-5 //eV/K
ni=1.5*10**16 //cm^-3

a=((Na-Nd)/2)
disp(a)
b=sqrt(((Na-Nd)/2)^2+(ni^2))
disp(b)

p0=a+b
disp(p0,"p0 in cm^-3 is=")         //textbook ans is wrpng

n0=(ni^2)/p0
disp(n0,"n0 in cm^-3 is=")         //textbook ans is wrpng

