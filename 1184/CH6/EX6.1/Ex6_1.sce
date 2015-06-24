//Example 6-1, Page No - 178

clear
clc

Vc =40*10^-12
c = 20*10^-12
f0 = 5.5*10^6
Ct = Vc+c

L = 1/((6.28*f0)^2*Ct)

printf('The value of the inductance is %.2f microhenry',L*10^6)
