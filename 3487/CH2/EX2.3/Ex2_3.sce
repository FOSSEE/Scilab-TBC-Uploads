//Chapter 2,Example 2.3 Page 68 
// based on equation 2.18
clc
clear
E = 30*10^3 // V/cm
E0 = 8.854*10^-12 // Epselon 
b = 1
v = 10
sigma = E0*E
printf (" sigma = %e C/m^2 \n ",sigma)
I = sigma*b*v
printf (" I = %e Amp",I)
//Answers may vary due to round of error
