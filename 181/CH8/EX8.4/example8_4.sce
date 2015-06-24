// To calculate required Gate source Resistance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-4 in page 378

clear; clc; close;

// Given Data
P=0.012; // Value of Allowable Gate Power Dissipation in watt
Es=10; // Trigger Source Voltage in V
slope=3*10^3; // Slope of Gate-Cathode Characteristic line

// Calculations
Ig=sqrt(P/slope); 
Vg=slope*Ig; 
Rs=(Es-Vg)/Ig; 

printf("(a)The value of Gate Resistance for the Circuit is %0.0f ohm \n",Rs);
printf("(b)The value of the Gate Voltage is %0.2e V \n",Vg);
printf("(c)The value of the Gate Current is %0.2e A \n",Ig);


// Results
// (a) The value of Gate Resistance for the Circuit is 2 K-ohm
// (b) The value of the Gate Voltage is 6 V
// (c) The value of the Gate Current is 2 mA