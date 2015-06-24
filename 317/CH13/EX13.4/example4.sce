// calculate drain current at half cutoff point
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-4, page 432

clear; clc; close;

// Given data
// 2N5459
Vgsoff=-8;// gate-source cutoff voltage in volts
Idss=16*10^-3 ;// maximum drain current in amperes

// Calculations
Id=Idss/4 ;// drain current at half cutoff point in amperes
disp("Amperes",Id,"Drain current=")

// Result
// Drain current is 4 mAmperes