clc
//Intitalisation of variables
clear
a= 6.4*10^-6 //g ion per lit
a1= 0.05
n= 2
//CALCULATIONS
Ksp= a^2*a1
s= (Ksp/n^2)^(1/3)
//RESULTS
printf ('Ks = %.2e ',Ksp)
printf ('\n solubility of Ag2CrO4 = %.2e mole per litre',s)
