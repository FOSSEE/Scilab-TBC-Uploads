// Exa 7.16

clc;
clear;

// Given

// An LVDT
vo = 5; // secondary voltage(volts) of LVDT
d = 12.5; // displacement in mm
d0 = 8; // displacement from central position in mm

// Solution

printf(' The sensitivity s = RMS value of output voltage/Displacement \n');

S = vo/d; // sensitivity

printf('  Therefore, s = %.1f V/mm \n',S);

printf('  Output voltage for a displacement of 8mm from its central position =  %.1f V \n',S*d0);
