clear
clc
//to find temperature rise of system water+stone
//to find entropy change of system
//to find entropy change of reverse process

//Given:
//refer to figure 24-1 from page no. 548
//mass of stone
ms = 1.5//in Kg
//mass of water
mw = 4.5//in Kg
//vertical height
h = 2.5//in meters
//initial temperature of water and stone
T = 300//in K
//specific heat capacity of water
cw = 4190//in J/Kg.K
//specific heat capacity of stone material
cs = 790//in J/Kg.K
//acceleration due to gravity
g = 9.8//in m/s^2

//Solution:
//applying laws of thermodynamics
//applying formula for entropy change for irreversible process
//heat transfer
Q = mw*g*h//in J
//temperature rise of system water+stone
delta_T = Q/((mw*cw)+(ms*cs))//in K
//entropy change of system
delta_S = Q/(T)//on J/K
//entropy change of reverse process
delta_s = -Q/T//in J/k //since heat is extracted from system

printf ("\n\n Heat transfer Q = \n\n %3i J" ,Q);
printf ("\n\n Temperature rise of system water+stone delta_T = \n\n %.1e K" ,delta_T);
printf ("\n\n Entropy change of system delta_S = \n\n %.2f J/k" ,delta_S);
printf ("\n\n Entropy change of reverse process delta_s = \n\n %.2f J/K" ,delta_s);
