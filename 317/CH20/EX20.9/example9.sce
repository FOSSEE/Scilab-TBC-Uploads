// find output current and maximum load resistance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 20-9, page 768

clear; clc; close;

// Given data
R=15*10^3;// in ohms
Vin=3;// input voltage in volts
Vcc=15;// in volts

// Calculations
iout=-Vin/R;// output current in amperes
Rlmax=(R/2)*((Vcc/Vin)-1);// maximum load resistance in ohms
disp("Amperes",iout,"output current=")
disp("ohms",Rlmax,"Maximum load resistance=")

// Result
// Output current is -0.2 mAmperes
// Maximum load resistance is 30 Kohms