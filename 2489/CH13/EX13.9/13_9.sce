clc
//Intitalisation of variables
clear
Ao= 138.3 //ohms^-1
k1= 3.41*10^-6 //ohm^-1 cm^-1
k2= 1.6*10^-6 //ohm^-1 cm^-1
T= 25 //C
//CALCULATIONS
s= 1000*(k1-k2)/Ao
//RESULTS
printf ('Solubility of AgCl in water = %.2e g equiv per liter',s)
