//Example 6.1, Page 208
clc
m=4*10^-14//in kg
v=10^-2//in m/s
KE=(0.5*m*v^2)
h=10^-34
printf("\n Kinetic energy(Vo-E) at %e Joule",KE)
delta_x=(h)/sqrt(2*m*KE)
printf("\n Value of penetration distance is  %e m ",delta_x)
