// Example 5.18, page no-317
clear
clc
Q=2500
d=2.75
a=(%pi*d^2)/4
v=Q/(60*a)
B=60
e=B*d*10^-2*v*10^-2
printf(" Induced emf e =%.4f V=%.1f mV",e,e*1000)
