// Exa 7.14

clc;
clear;

// Given

// An LVDT
vo = 2.6; // Output voltage(volts) of LVDT
d = 0.4; // displacement in mm

// Solution

printf(' The sensitivity s = RMS value of output voltage/Displacement \n');

S = vo/d; // sensitivity

printf('  Therefore, s = %.1f V/mm \n',S); 
