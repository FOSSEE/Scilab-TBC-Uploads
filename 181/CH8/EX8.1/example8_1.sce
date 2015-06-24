// Calculate the Gate Source Resistance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-1 in page 376

clear; clc; close;

// Given Data
P=0.5; // Value of Allowable Gate Power Dissipation in watt
Es=14; // Trigger Source Voltage in V
slope=130; // Slope of Gate-Cathode Characteristic line

// Calculations
Ig=sqrt(P/slope); 
Vg=slope*Ig;
Rs=(Es-Vg)/Ig; 

printf("(a)The value of Gate Resistance for the Circuit is %0.2e ohm \n",Rs);
printf("(b)The value of the Gate Voltage is %0.2e V \n",Vg);
printf("(c)The value of the Gate Current is %0.2e A \n",Ig);

// Results
// (a) The value of Gate Resistance for the Circuit is 95.3 ohm
// (b) The value of the Gate Voltage is 8.06 V
// (c) The value of the Gate Current is 62 mA