// calculate error output voltage  
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-9, page 640

clear; clc; close;

// Given data
Av=300;// voltage gain
Inbias=80*10^-9;// input bias current in amperes        
Inoff=20*10^-9;// input offset current in amperes
Vinoff=5*10^-3;// input offset voltage in volts
Rb1=10^4;// in ohms
Rb2=10^4;// in ohms

// Calculations
V1err=(Rb1-Rb2)*Inbias;// unwanted dc error input in volts
V2err=(Rb1+Rb2)*Inoff/2;// unwanted dc error input in volts
V3err=Vinoff;// unwanted dc error input in volts
Verror=Av*(V1err+V2err+V3err);// output error voltage in volts
disp("Volts",Verror,"output error voltage=")

// Result
// Output error voltage is 1.56 Volts