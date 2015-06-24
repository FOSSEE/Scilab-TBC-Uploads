// find voltage gain of each channel
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 20-5, page 759

clear; clc; close;

// Given data
R1=1*10^3;// in ohms
R2=2*10^3;// in ohms
R3=3*10^3;// in ohms
R4=4*10^3;// in ohms
R5=5*10^3;// in ohms
Rf=6*10^3;// in ohms

// Calculations
R12=R1*R2/(R1+R2);// R1||R2
R45=R4*R5/(R4+R5);// R4||R5
R35=R3*R5/(R3+R5);// R3||R5
Av1=-Rf/R1;// voltage gain of channel
Av2=-Rf/R2;// voltage gain of channel
Av3=((Rf/R12)+1)*(R45/(R3+R45));// voltage gain of channel
Av4=((Rf/R12)+1)*(R35/(R4+R35));// voltage gain of channel
disp(Av1,"voltage gain 1=")
disp(Av2,"voltage gain 2=")
disp(Av3,"voltage gain 3=")
disp(Av4,"voltage gain 4=")

// Results
// Voltage gain of channel 1 is -6
// Voltage gain of channel 2 is -3
// Voltage gain of channel 3 is 4.26
// Voltage gain of channel 4 is 3.19