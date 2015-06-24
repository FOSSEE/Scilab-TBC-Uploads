// Example 8.7, page no-212
clear
clc

m=9.1*10^-31//Kg
dE=0.01 //eV
h=6.63*10^-34///Js
eF=3//eV
e=1.6*10^-19//C
E1=eF*e
E2=E1+e*dE

n=(4*%pi*(2*m)^(1.5))/h^3
k=((2*0.3523/3)*((E2^(1.5)-(E1^(1.5)))))
n=n*k
printf("The number of states lying between the energy level is %.2f*10^25",n*10^-25)
