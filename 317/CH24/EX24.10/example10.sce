// find load regulation and line regulation
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-10, page 964

clear; clc; close;

// Given data
Vnl=10.16;// in volts
Vfl=10.15;// in volts
Vhl=10.16;// in volts
Vll=10.07;// in volts

// Calculations
ld=((Vnl-Vfl)/Vfl)*100 ;// load regulation in %
ln=((Vhl-Vll)/Vll)*100;// loan regulation in %
disp("%",ld,"load regulation=")
disp("%",ln,"line regulation=")

// Results
// load regulation is 0.0985%
// line regulation is 0.894%