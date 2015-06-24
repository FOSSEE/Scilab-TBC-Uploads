// calculate error output voltage  
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-8, page 639

clear; clc; close;

// Given data
Av=200;// voltage gain
Inbias=3*10^-6;// input bias current in amperes        
Inoff=0.5*10^-6;// input offset current in amperes
Vinoff=10^-3;// input offset voltage in volts
Rb1=10^3;// in ohms
Rb2=0;// in ohms

// Calculations
V1err=(Rb1-Rb2)*Inbias;// unwanted dc error input in volts
V2err=(Rb1+Rb2)*Inoff/2;// unwanted dc error input in volts
V3err=Vinoff;// unwanted dc error input in volts
Verror=Av*(V1err+V2err+V3err);// output error voltage in volts
disp("Volts",Verror,"output error voltage=")

// Result
// Output error voltage is 850 mVolts