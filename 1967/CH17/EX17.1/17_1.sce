clc
//initialisation of variables
clear
s= 1.771*10^-4 //mole litre^-1
s1= 0.3252*10^-2 //mole litre^-1
//CALCULATIONS
S= s*10^(0.509*(sqrt(s+s1)-sqrt(s)))
//RESULTS
printf ('Solubility = %.2e mole litre^-1',S)
