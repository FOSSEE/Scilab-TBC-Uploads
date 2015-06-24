clc
//Intitalisation of variables
clear
v= 1.32 //lit
T= 48 //C
p= 18.4 //atm
R= 0.082 //lit-atm deg^-1 mole^-1
a= 3.6
b= 4.28*10^-2
//CALCULATIONS
P1= R*(273+T)/v
P2= (R*(273+T)/(v-b))-(a/v^2)
//RESULTS
printf ('Pressure by ideal gas equation = %.1f atm',P1)
printf ('\n Pressure by vander Waals equation = %.1f atm',P2)
