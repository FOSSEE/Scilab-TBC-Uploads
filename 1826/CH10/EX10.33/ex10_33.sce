// Example 10.33, page no-290
clear
clc
R=0.02//Ohm-m
i=15//A
mu=4.3*10^-3//m^2/V-s
l=2//m
k=1.38*10^-23
m=9.1*10^-31//kg
T=300//K
v=i*R
E=v/l
vd=E*mu
vth=sqrt(3*k*T/m)
printf("\nThe thermal velocity of the free electrons in copper is %.3f mm/s\nThe drift velocity of electrons in copper is %.3f mm/s",vth*10^-5,vd*10^3)
