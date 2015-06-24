// Example 8.18, page no-221
clear
clc

h=6.62*10^-34//Js
m=9.1*10^-31//Kg
e=1.6*10^-19//C
ef=7*e
k=((3/(8*%pi))^(2/3))*((h^2)/(2*m))
k=ef/k
n=k^(1.5)
printf("The number of free electrons concentration in metal is %.2f *10^28 per cubic meter ",n*10^-28)
vth=sqrt(2*ef/m)
printf("\nThe termal velocity of electrons in copper is %.3f *10^6 m/s",vth*10^-6)
