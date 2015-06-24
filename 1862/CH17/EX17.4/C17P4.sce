clear
clc
//to find rotaional inertia of traingle

// GIVEN:
//mass of rod
M = 0.112//in Kg
//length of rod
L = 0.096//in m
//period of oscillations of rod
T_rod = 2.14//in seconds
//period of oscillations of traingular shape body
T_triangle = 5.83//in seconds


// SOLUTION:
//using equation of physical pendulum
//rotational inertia of body
I_rod = (M*L^2)/12//in Kg.m^2
//rotaional inertia of traingle
I_triangle = I_rod*(T_triangle/T_rod)^2//in Kg.m^2

printf ("\n\n Rotational inertia of body I_rod = \n\n %.2e Kg.m^2",I_rod)
printf ("\n\n Rotaional inertia of traingle I_triangle = \n\n %.2e Kg.m^2",I_triangle)
