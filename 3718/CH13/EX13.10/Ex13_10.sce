//Chapter 13: Fuel and Combustions
//Problem: 10
clc;

//Declaration of Variables
H = 0.30      // metre cube
CO = 0.10     // metre cube
CH4 = 0.04    // metre cube
N2 = 0.56     // metre cube

// Solution
vol_o = H * 0.5 + CO * 0.5 + CH4 * 2
vol_a = vol_o * 100 / 21

mprintf("Volumer of air required for complete combustion of 1 metre cube of producer gas: %.3f metre cube",vol_a)
