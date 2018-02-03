// Exa 1.19

clc;
clear;

// Given

// Design of thermocouple voltmeter
// Three ranges
V1 = 5; // Volts
V2 = 10; // Volts
V3 = 25; // Volts
Ifs = 50*10^-3; // Amp
Rm = 200; // Ohms
Imax = 5*10^-3; // Amps
Rheater = 200; // Ohms

// Solution

printf(' To get a FSD for 5,10 and 25V, current through the heater must be limited to 5mA \n');

printf('For a 5V range \n');
Rs1 = V1/Imax - Rm;
printf('Series resistance Rs = %d Ohms \n',Rs1);
printf('For a 10V range \n');
Rs2 = V2/Imax - Rm;
printf('Series resistance Rs = %d Ohms \n',Rs2); 
printf('For a 25V range \n');
Rs3 = V3/Imax - Rm;
printf('Series resistance Rs = %d Ohms \n',Rs3);  

//The answer provided in the textbook for Rs3 is wrong
