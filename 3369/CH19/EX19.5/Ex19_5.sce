//Chapter 19,Example 5,page 672
//Determine the electric stress and charge density
clear
clc
a = 25*10^-6 // m
b = 75*10^-6 // m
Er = 2.8
ps = 25*10^-6 // C/m^3
E0 = 8.84*10^-12

Ea = (b*ps)/(ps*E0+b*Er*E0)
Eb = (a*ps)/(ps*E0+b*Er*E0) // the negative noation is removed to obtain positive answer as in the book 
psc = E0*Eb

printf("\n Ea = %e V/m",Ea)
printf("\n Eb = %e V/m",Eb)
printf("\n Charge density = %e C/m^2",psc)

// Answers may vary due to round off error
