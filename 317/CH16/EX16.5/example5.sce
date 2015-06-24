// calculate decibel power gain
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 16-5, page 571

clear; clc; close;

// Given data
Ap1=1;// power gain
Ap2=0.5;// power gain
Ap3=0.25;// power gain
Ap4=0.125;// power gain

// Calculations
Apdb1=10*log10(Ap1)// decibel power gain
Apdb2=10*log10(Ap2)// decibel power gain
Apdb3=10*log10(Ap3)// decibel power gain
Apdb4=10*log10(Ap4)// decibel power gain
disp("dB",Apdb1,"decibel power gain 1=")
disp("dB",Apdb2,"decibel power gain 2=")
disp("dB",Apdb3,"decibel power gain 3=")
disp("dB",Apdb4,"decibel power gain 4=")


// Result
// decibal power gain for a voltage gain of 1 is 0 dB
// decibal power gain for a voltage gain of 0.5 is -3 dB
// decibal power gain for a voltage gain of 0.25 is -6 dB
// decibal power gain for a voltage gain of 0.125 is -9 dB