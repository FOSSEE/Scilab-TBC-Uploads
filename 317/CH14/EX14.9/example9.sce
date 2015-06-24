// calculate current through the motor winding 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-9, page 502

clear; clc; close;

// Given data
// MTP4N80E
Vgson=10 ;// gate-source on-voltage in volts
Idon=2; // on-state drain current in amperes
Rdson=1.95; // static drain-source on resistance in ohms
Vdd=30;// drain cutoff voltage in volts
Rd=30;// drain cutoff voltage in ohms

// Calculations
Idsat=Vdd/Rd;// drain saturation current in amperes
// as Idsat<Idon the power FET is equivalent to a resistance of Rdson so Rdson will have to be included to find the actual current
Id=Vdd/(Rd+Rdson) ;// current in amperes
disp("Amperes",Id,"Current through the motor windings=")

// Result
// Current through the motor windings is 0.939 Amperes