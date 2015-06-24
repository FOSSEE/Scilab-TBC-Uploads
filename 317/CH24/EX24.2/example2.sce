// find output voltage,load,collector current
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-2, page 954

clear; clc; close;

// Given data
Vin=15;// input voltage
Rs=10;// in ohms
Vz=6.2;// in volts
Vbe=0.81;// in volts
Rl=40;// in ohms
R1=750;// in ohms
R2=250 ;// in ohms

// Calculations
Vout=((R1+R2)/R1)*(Vz+Vbe);// output voltage in volts
Is=(Vin-Vout)/Rs;// current through series resistor in amperes
Il=Vout/Rl;// load current in amperes
Ic=Is-Il;// collector current in ampers
disp("Volts",Vout,"output voltage=")
disp("amperes",Il,"load current=")
disp("amperes",Ic,"collector current=")

// Results
// Output voltage is 9.35
// Load current is 234 mAmperes
// Collector current is 331 mAmperes