// Example 2.27 page no-86
clear
clc
mp=0.4
T=300
k=4.82*10^15
Nv=k*(mp*T)^(3/2)
printf("Doping concentration, NA = ND = %.2f*10^18 atoms/cm^3",Nv/10^18)
