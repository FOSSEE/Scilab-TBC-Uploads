clc

k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Dp=10//cm^2/sec
Lp=31.6*10**-4 //m
g1taup0=10^14 //cm^-3
deltap0=10^13 //cm6-3

//deltap0=g1taup0*[g/((Dp/Lp)+s)]
s=(Dp/Lp)*((g1taup0/deltap0)-1)
disp(s,"surface recombination velocity in cm per sec is= ")

