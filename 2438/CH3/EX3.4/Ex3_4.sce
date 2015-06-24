// Chapter 3 example 4
clc;
clear;

// Variable declaration
Bo  = 2;                // magnetic field in tesla
r   = 5.29*10^-11       // radius in m
m   = 9.1*10^-31;           // mass of electron in kg
e   = 1.6*10^-19           // charge of electron

// calculations
du  = (e^2 * Bo * r^2)/(4*m)        // change in magnetic moment

// output
mprintf('Change in magnetic moment = %3.1e J/T',du);
