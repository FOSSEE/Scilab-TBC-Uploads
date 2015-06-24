clc
clear
printf("Example 5.5 | Page number 125 \n\n");
//Find air temperature after throttling

//Given Data
p1 = 10//bar //inlet pressure
t1 = 300 //°C //inlet temperature

p2 = 0.1 //bar //exit pressure
Cp = 1 //kJ/kgK // heat capacity at constant pressure
//Solution
//Adiabatic process
delta_h = 0 //change in enthalpy
t2 = delta_h/Cp + t1
printf("Temperature of air after throttling = %.1f °C",t1)
