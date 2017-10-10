// Exa 2.1

clc;
clear all;

// Given data

N= 100; //  Number of turns
W=20; // Width of coil(mm)
D= 30; // Depth of coil(mm)
B= 0.1; // Flux density (wb/m^2)
I= 10; // Current in coil(mA)
K= 2*10^-6; // Spring constant(Nm/degree)

// Solution
A= W*10^-3*D*10^-3; // Area of coil(m^2)
Td= B*N*A*I*10^-3; // Deflecting torque(Nm)
disp("As deflecting torque = restoring torque(K*Theta)");
Theta= Td/K;
printf(' The defecting torque = %.1f * 10^-6 Nm \n ', Td*10^6);
printf('Therefore, the deflection = %d degrees \n ' , Theta);
