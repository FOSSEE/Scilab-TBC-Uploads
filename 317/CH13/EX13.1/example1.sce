// calculate input resistance of JFET
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-1, page 428

clear;clc; close;

// Given data
// 2N5486 JFET
Vgs=20;// reverse gate voltage in volts
Ig=1*10^-9 ;// gate current in amperes 

// Calculations
Rin=Vgs/Ig;// in ohms
disp("ohms",Rin,"input resistance=")

// Result
// input resistance is 20,000 Mohms 