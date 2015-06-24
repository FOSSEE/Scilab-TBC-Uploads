// find output voltage,input,load,collector current
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-4, page 955

clear; clc; close;

// Given data
Vin=15;// input voltage
Rs=10;// in ohms
Vz=6.8;// in volts
Rl=40;// in ohms
R1=7.5*10^3;// in ohms
R2=2.5*10^3 ;// in ohms

// Calculations
Vout=((R1+R2)/R1)*Vz;// output voltage in volts
Is=(Vin-Vout)/Rs;// current through series resistor in amperes
Iin=Is;// as I3 is very low input current in amperes
Il=Vout/Rl;// load current in amperes
Ic=Is-Il;// collector current in ampers
disp("Volts",Vout,"output voltage=")
disp("amperes",Iin,"input current=")
disp("amperes",Il,"load current=")
disp("amperes",Ic,"collector current=")

// Results
// Output voltage is 9.07 Volts
// Input current is 593 mAmperes
// Load current is 227 mAmperes
// Collector current is 366 mAmperes