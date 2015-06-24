// Example 2.3 page no-47
clear
clc
e_ar=11.6 //eV
e_Na=5.12 //eV
V=e_ar-e_Na
e=1.6*10^-19 //C
m=9.1*10^-31 //kg
v=sqrt(2*e*V/m)
printf("Velocity, v=%.2f*10^6 m/sec",v/10^6)
