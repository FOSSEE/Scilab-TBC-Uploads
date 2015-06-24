clc
//initialisation of variables
clear
T= 40 //C
R= 0.0820 //lit-atm deg^-1 mol^-1
v= 0.381 //lit
b= 0.043 //lit
a= 3.6 
//CALCULATIONS
P= (R*(273+T)/(v-b))-(a/v^2)
//RESULTS
printf ('Pressure = %.1f atm',P)
