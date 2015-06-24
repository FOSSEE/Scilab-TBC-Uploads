clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
esp=11.7
esp0=8.85*10^-14 
E=6.8*10**4 //V/cm

deltaphi=sqrt((e*E)/(4*%pi*esp*esp0))
disp(deltaphi,"schottky barrier lowring in V is =")

xm=sqrt(e/(16*%pi*esp*esp0*E))
disp(xm,"maxi barrier height in meter is=")

