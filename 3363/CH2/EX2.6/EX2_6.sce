//example 2.6, page 62
clc
e=1.6*10^-19//in coul
B=2*10^-1//weber/m2
r=2.5*10^-2//in m
p=e*B*r
printf("\n Momentum of electron %e Kg-m/sec",p)
x=1.5//in Mev, ie c^2*p^2
y=.51//in Mev
E_minus=sqrt(x^2+y^2)
E=2*E_minus//h*v
h=6.63*10^-34//Joule-sec
c=3*10^8//m/sec
lambda=(h*c)/(10^6*E*1.6*10^-19)
printf("\n Photons wavelength is %e m",lambda)