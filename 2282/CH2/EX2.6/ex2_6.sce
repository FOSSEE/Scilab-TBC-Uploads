// Example 2.6, page no-38
clear
clc

R=7000*10^3 //sattelite orbit in m
mu=39.8*10^13//constant G*M in Nm^2/kg
A=47000*10^3     //appogee distance in m
P=7000*10^3  //perigee distance in m
v=sqrt(mu/R)
a=(A+P)/2
v1=sqrt(mu*((2/R)-(1/a)))
printf("Velocity of satellite A at point X is v=%.2fkm/s\n Velocity of satellite B at point X is V=%.3fkm/s",v/1000,v1/1000)//value in book is different at 3rd decimal place.
