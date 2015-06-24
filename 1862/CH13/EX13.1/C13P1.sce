
clear
 clc
//to find change in internal energy

// GIVEN:
//mass of baseball
m = 0.143//in kg
//height of tower
h = 443//in m
//terminal velocity
v = 42//in m/s
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//initial potential energy
Ui = m*g*h//in J
//final potential energy
Uf = 0//in J
//change in potential energy
delta_U = (Uf-Ui)//in J 
//final kinetic energy
Kf = (1/2)*(m*v^2)//in J
//initial kinetic energy
Ki = 0//in J
//change in kinetic energy
delta_K = (Kf-Ki)//in J 
//applying conservation of energy principle
//change in internal energy
delta_Eint = (-delta_U-delta_K)//in J
delta_U = round (Uf-Ui)
delta_K = round(Kf-Ki)
delta_Eint = round(-delta_U-delta_K)

printf ("\n\n Change in potential energy delta_U  = \n\n %3i J",delta_U)
printf ("\n\n Change in kinetic energy delta_K  = \n\n %3i J",delta_K)
printf ("\n\n Change in internal energy delta_Eint  = \n\n %3i J",delta_Eint)
