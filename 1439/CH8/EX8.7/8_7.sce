clc 
//initialisation of variables
R= 0.082 //l-atm / mol ^-1 K^-1
T= 30 //C
V= 1 //l
//CALCULATIONS
p= R*(273.15+T)/V
//RESULTS
printf ('osmotic pressure of sucrose solution= %.1f atm',p)
