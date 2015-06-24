// Find current if diode is forwar-biased
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-1 in page 143

clear; clc; close;

// Given data
I=29.8*10^-3; // Current in mA
V=0.208; // Voltage in V

// Calculation
I=(45-V)/(1.5*10^3);
printf("I = %0.2e A\n",I);
printf("For this current,V = 0.2 V\n");
printf("(a)Therefore I = 29.8 mA\n");
printf("(b)If battery is inserted with reverse polarity,voltage drop across the 1.5 K resistors is only 15 mV and may be neglected\n");
printf("(c)In forward direction, I=29.8 mA\n");
printf("In reverse direction we draw a load line from V=-30 V to I=-30 mA\n");
y=[-30 -25 -20 -15 -10 -5 0];
x=[-30 -25 -20 -15 -10 -5 0];
x=-30-y;
plot(x,y);
xlabel('Voltage');
ylabel('Current');
title('Current in forward direction');
I=-30*(20/30);
printf("Then,I = %0.0f mA\n",I);
printf("Current=20 mA as there is a 10 V drop");

// Result
// Graph shows current in reverse direction
// I' = -20 mA
// Set axis positions to 'origin' in axis properties to view the graph correctly