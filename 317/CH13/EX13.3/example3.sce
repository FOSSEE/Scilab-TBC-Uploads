// calculate gate voltage and drain current at half cutoff point
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-3, page 431

clear; clc; close;

// Given data
// 2N5668
Vgsoff=-4;// gate-source cutoff voltage in volts
Idss=5*10^-3 ;// maximum drain current in amperes

// Calculations
Vgs=-Vgsoff/2 ;// gate voltage at half cutoff point in volts
Id=Idss/4 ;// drain current at half cutoff point in amperes
disp("Amperes",Id,"Drain current=")
disp("Volts",Vgs,"gate Voltage=")


// Result
// Gate voltage at half cutoff point is -2 Volts
// Drain current is 1.25 mAmperes