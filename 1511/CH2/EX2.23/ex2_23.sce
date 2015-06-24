// Example 2.23 page no-80
clear
clc
mup=0.4
T=300
Nv=4.82*10^15
Na=Nv*mup^(3/2)*T^(3/2)
printf("\nDoping concentration, NA=%.2f*10^18 atoms/cm^3",Na/10^18)
