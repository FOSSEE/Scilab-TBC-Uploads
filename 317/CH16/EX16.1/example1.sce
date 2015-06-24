// calculate voltage gain of ac amplifier
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 16-1, page 567

clear; clc; close;

// Given data
f1=20;// cutoff frequency in hertz
f2=20*10^3;// cutoff frequency in hertz
fin1=5;// input frequency in hertz
fin2=200*10^3;// input frequency in hertz
Avmid=200;// midband voltage gain

// Calculations
Av1=Avmid/((1+((f1/fin1)^2))^0.5)// Voltage gain for input frequency below midband
Av2=Avmid*1/((1+((fin2/f2)^2))^0.5); // Voltage gain for input frequency above midband
disp(Av1,"Voltage  gain for input frequency below midband")
disp(Av2,"Voltage gain or input frequency above midband")

// Result
// Voltage gain for an input frequency of 5 Hertz is 48.5
// Voltage gain for an input frequency of 20 KHertz is 19.9