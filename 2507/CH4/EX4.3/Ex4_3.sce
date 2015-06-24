clc
clear
printf("Example 4.3 | Page number 99 \n\n");
//Find the total energy of the system with respect to an observer at rest at sea level. 
//Given data
m = 2.3 //kg //mass of substance
u = 21 * 10^3 //J/kg //internal energy
V = 110 //m/s //velocity 
z = 1500 //m //elevation above sea level
g = 9.81 //m/s^2 //acceleration due to gravity


//Solution
E = m*(g*z + V^2/2 + u) //J/kg //Total energy of the system
printf("The total energy of the system with respect to an observer at rest at sea level, E = %.4f KJ",0.001*E);
