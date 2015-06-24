// Example 2.1, page no-36
clear
clc

r1=6370      //Earth's Orbit in km
r2=630       //Height of satellite from surface in km
G=6.67*10^-11// Gravitational constant inNm^2/kg^2
M=5.98*10^24 //Mass of earth in kg

R=r1+r2

v=sqrt(G*M/(R*10^3))
printf("The velocity of sattelite %.2fkm/s",floor(v/10)*10^-2)
