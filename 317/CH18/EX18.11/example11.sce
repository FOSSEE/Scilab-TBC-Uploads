// find output error voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-11, page 684

clear; clc; close;

// Given data
R1=10^2;// in ohms from the given figure
Rf=3.9*10^3;// in ohms from the given figure
Inbias=500*10^-9;// input bias current in amperes        
Inoff=200*10^-9;// input offset current in amperes
Vinoff=6*10^-3;// input offset voltage in volts
Rb1=0;// in ohms

// Calculations
Avcl=(Rf/R1)+1;// cloased loop voltage gain
Rb2=R1*Rf/(R1+Rf);// in ohms
V1err=(Rb1-Rb2)*Inbias;// unwanted dc error input in volts
V2err=(Rb1+Rb2)*Inoff/2;// unwanted dc error input in volts
V3err=Vinoff;// unwanted dc error input in volts
Verror=Avcl*(V1err+V2err+V3err);// output error voltage in volts;
disp("Volts",Verror,"output error voltage=")

// Result
// Output error voltage is 238 mVolts