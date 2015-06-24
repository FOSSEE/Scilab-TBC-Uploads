// find gate-source cutoff voltage and transconductance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-12, page 447

clear; clc; close;

// Given data
Idss=5*10^-3;// maximum drain current in amperes
gmo=5000*10^-6;// maximum transconductance in Seimen
Vgs=-1;// Gate-source voltage in volts

// Calculations
Vgsoff=-2*Idss/gmo;// gate-source cutoff voltage in volts
gm=gmo*(1-(Vgs/Vgsoff));// Transconductance at given Vgs
disp("Volts",Vgsoff,"Gate source cutoff voltage=")
disp("Seimen",gm,"transconductance=")

// Result
// Gate source cutoff voltage is -2 Volts
// Transconductance is 2500 MicroSeimens