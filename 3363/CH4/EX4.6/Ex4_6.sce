//Example 4.6, Page 120
clc
rho=9*10^9//in nt-m2/coul2 
m=9.11*10^-31//in kg
e=1.6*10^-19//coul
h=1.05*10^-34//in j-sec
E=-(rho*m*e^4)/(2*h^2)
printf("\n Binding energy is %e Joule ",E)
//Answer given in the book is wrong