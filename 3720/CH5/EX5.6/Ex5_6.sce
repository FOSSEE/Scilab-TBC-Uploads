// Example 5_6
clc;clear;funcprot(0);
// Given values
z_1=5;// m
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
V_2=sqrt(2*g*z_1);// Toricelli equation
printf('The water leaves the tank with an initial velocity,V_2=%0.1f m/s\n',V_2);
