// calculate ohmic resistance , gate-source cutoff voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-2, page 430

clear; clc; close;

// Given data
// MPF4857
Vp=6;// pinchoff voltage in volts
Idss=100*10^-3 ;// maximum drain current in amperes

// Calculations
Rds=Vp/Idss;// ohmic resistance in ohms
Vgsoff=-Vp;// gate source cutoff voltge is negative of pinchoff voltage
disp("ohms",Rds,"input resistance=")
disp("Volts",Vgsoff,"gate-source cutoff voltage=")

// Result
// input resistance is 60 ohms
// gate-source cutoff voltage is -6 Volts