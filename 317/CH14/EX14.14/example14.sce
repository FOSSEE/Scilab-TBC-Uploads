// find value of Rd for the MOSFET 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-14, page 507

clear; clc; close;

// Given data
Idon=3*10^-3;// from the data sheet of the E-MOSFET in amperes
Vdson=10;// from data sheet of the E-MOSFET in volts 
Vdd=25 ;// drain cutoff voltage in volts

// Calculations
Rd=(Vdd-Vdson)/Idon ;// Rd in ohms
disp("ohms",Rd,"resistance=")

// Result
// A resistance of 5kohms will allow the MOSFET to operate at a specified Q point.