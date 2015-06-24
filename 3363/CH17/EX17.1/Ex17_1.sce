//Example 17.1, Page 643
clc
h=1.05*10^-34//j-s
M=1.7*10^-27//in kg
r=2*10^-15//in m
K=(h**2)/(M*r*r)
s=K* 6.24150647996E+12//converting to Mev
K_total_cm=2*s
k_incident=2*K_total_cm
printf("\n The kinetic energy of incident nucleon is %d Mev",k_incident)