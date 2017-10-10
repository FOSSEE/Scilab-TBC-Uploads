// Exa 1.7

clc;
clear all;

// Given data

Range= 600; //volgmeter range(volts)
Accu= 0.02; //Accuracy 
X= 250; //voltage to be measured(volts)

// Solution

Mag= Accu * Range; //magnitude of limiting error
X_mag = Mag/X * 100; // limiting error at 250V inpercentag

printf('Limiting error when instrument is used to measure at 250V = %.1f percentage \n',X_mag);

    
