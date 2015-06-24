// find load regulation and line regulation
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-6, page 956

clear; clc; close;

// Given data
Vnl=9.91;// in volts
Vfl=9.81;// in volts
Vhl=9.94;// in volts
Vll=9.79 ;// in volts

// Calculations
ld=((Vnl-Vfl)/Vfl)*100 ;// load regulation in %
ln=((Vhl-Vll)/Vll)*100;// loan regulation in %
disp("%",ld,"load regulation=")
disp("%",ln,"line regulation=")

// Results
// load regulation is 1.02%
// line regulation is 1.53%