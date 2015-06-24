//Example 8.2, page 293
//From previous derivation of formula
clc
delb_by_delz=10//tesla/m
u=0.927*10^-23//amp-m2
x=1///in m
k=1.38*10^-23//j/k
T=400//in K
Z=(delb_by_delz*u*x^2)/(8*k*T)
printf("\n Transverse deflection that occur  is + %e m or - %e m ",Z,Z)