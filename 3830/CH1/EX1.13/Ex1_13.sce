// Exa 1.13

clc;
clear;

// Given

Rm = 1; // Meter resistance in ohms
Vmax = 250; // Max voltage(V)
R1 = 4.999; // Series resistance in Ohms
R2 = 1/499; //Shunt resistance in Ohms
V = 500; // Volage to be measured(V)
// Solution

Imeter = V/(R1+Rm);
printf('Meter current Imeter = %.2f A \n ',Imeter);
printf('The current through the meter should not exceed %.1f A \n Hence, Voltage drop = %.2f V \n',Imeter,Imeter*Rm);
Vdrop = Imeter*Rm;
// When Shunt resistance is connected accross meter
CurrentRange = Vdrop/R2 + Imeter;
Rs =(V-Imeter)/0.05;
printf(' Series resistance Rs = %d Ohms \n',Rs);

//The answer provided in the textbook are incorrect
