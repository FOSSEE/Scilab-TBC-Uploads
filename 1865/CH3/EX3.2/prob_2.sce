
//Problem 2
//Calculate the maximum speed of electron striking the anti-cathode
clear
clc
V=18// Potential difference in kV
e=1.6*10^(-19)//charge on an electron in C
m=9.1*10^(-31)//mass of an electron in kg
v=(2*e*V/m)^(0.5)//maximum speed of electron in m/s
printf('maximum speed of electron striking the anti-cathode = %.1f m/s',v)