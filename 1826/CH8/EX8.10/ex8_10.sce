// Example 8.10, page no-215
clear
clc
n=18.1*10^28//per cubic m
h=6.62*10^-34//Js
m=9.1*10^-31//Kg
e=1.6*10^-19//C
ef=((3*n/(8*%pi))^(2/3))*((h^2)/(2*m))
ef=ef/e
printf("The Fermi energy at 0 K is %.2f eV ",ef)
