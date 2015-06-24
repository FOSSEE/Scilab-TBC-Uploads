// calculate drain current at given gate-source voltages
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-1, page 482

clear; clc; close;

// Given data
// D-MOSFET
Vgsoff=-3;// gate-source cutoff voltage in volts
Idss=6*10^-3 ;// maximum drain current in amperes
Vgs1=-1 ;// gate source voltage in volts
Vgs2=-2 ;// gate source voltage in volts
Vgs3=0  ;// gate source voltage in volts
Vgs4=1  ;// gate source voltage in volts
Vgs5=2  ;// gate source voltage in volts

// Calculations
Id1=Idss*(1-(Vgs1/Vgsoff))^2 ;// drain current in amperes
Id2=Idss*(1-(Vgs2/Vgsoff))^2 ;// drain current in amperes
Id3=Idss*(1-(Vgs3/Vgsoff))^2 ;// drain current in amperes
Id4=Idss*(1-(Vgs4/Vgsoff))^2 ;// drain current in amperes
Id5=Idss*(1-(Vgs5/Vgsoff))^2 ;// drain current in amperes
disp("amperes",Id1,"drain current 1=")
disp("amperes",Id2,"drain current 2=")
disp("amperes",Id3,"drain current 3=")
disp("amperes",Id4,"drain current 4=")
disp("amperes",Id5,"drain current 5=")

// Result
// Values of Drain current is 2.67, 0.667, 6, 10.7, 16.7  mAmperes respectively.