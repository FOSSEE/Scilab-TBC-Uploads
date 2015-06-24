clc

k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
x=0
taup0=10**-6//ses
taup01=10**-7 //sec
deltapb=10**14 //cm**-3
Dn=10 //cm^2/sec
Dp=10 //cm^2/sec
B=-9*10^13

deltap=deltapb*(taup01/taup0)
disp(deltap,"deltap in cm^-3 is=")

g=deltap/taup0
disp(g,"g generation in cm^-3s^-1 is= ")

//deltapx=10^14*(1-0.9*exp(-x/Lp))
Lp=sqrt(Dp*taup0)
disp(Lp,"Lp in meter is=")

deltapx=10^14*(1-0.9*exp(-x/Lp))
disp(deltapx,"distance from the surface is =")
