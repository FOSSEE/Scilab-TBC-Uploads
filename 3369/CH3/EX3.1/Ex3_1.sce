//Chapter 3, Exmaple 1, page 103
//Movement of oxygen molecule
clc
clear
//using equation 3.3
R = 3814 // J/Kg.mol.K
T = 300 // K
M = 32 // mol^-1
V2 = 3*R*(T/M)
V = sqrt(V2)
printf("Velocity of Oxygen (O2)= %d m^2/s^2\n",V2)
//Since Oxygen is a diatomic gas
printf("Velocity of Oxygen (O)= %d m/s",V)
//Velocity of oxygen is about 300 m/s

//Answer given in the textbook is wrong
