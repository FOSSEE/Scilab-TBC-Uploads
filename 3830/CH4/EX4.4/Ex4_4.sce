// Exa 4.4

clc;
clear;

// Given

Def_sensitivity = 0.05; // Deflection sensitivity in mm/V
Spot_deflection = 5; // in mm

// Solution

AppliedVoltage = Spot_deflection/Def_sensitivity ;

printf(' The applied voltage = %d V \n',AppliedVoltage);
