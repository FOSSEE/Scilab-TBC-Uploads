// Equation for drain current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-36 in page 340

clear; clc; close;

// Given
Idss=12; // Drain source current in mA
Vgs=-5; // Gate source voltage in V when off

// Calculation
printf("Equation for drain current:Id = %0.0f*(1-(Vgs/%0.0f))^2",Idss,Vgs);
x=[-5 -4 -3 -2 -1 0];
y=[12 11 10 9 8 7 6 5 4 3 2 1 0];
y=12*(1+(x/5))^2;
plot(x,y);
xlabel('Vgs');
ylabel('Id');
title('Transfer characteristics of FET');

// Result
// Graph shows the transfer characteristics of FET for the given values
// Set axis properties to 'origin' to view graph correctly