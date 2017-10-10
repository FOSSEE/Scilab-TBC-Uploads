
//Problem 4
//calculate the velocity of electrons at which they strike the target
clear
clc
V=10*10^3// potential difference in V
e=1.6*10^(-19)//charge on an electron in C
m=9.1*10^(-31)//mass of an electron in kg
KE=e*V// kinetic energy of electrons reaching the target material in J
v=(2*KE/m)^(0.5)//velocity of electrons at which they strike the target in m/s
printf('velocity of electrons at which they strike the target = %.2f m/s',v)