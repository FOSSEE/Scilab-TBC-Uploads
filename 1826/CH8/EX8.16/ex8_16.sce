// Example 8.16, page no-220
clear
clc
d=10500//density
avg=6.022*10^26
awt=107.9
n=d*avg/awt//per cubic m
h=6.62*10^-34//Js
m=9.1*10^-31//Kg
e=1.6*10^-19//C
ef=((3*n/(8*%pi))^(2/3))*((h^2)/(2*m))
ef=ef/e
printf("The Fermi energy for given metal is %.2f eV ",ef)
