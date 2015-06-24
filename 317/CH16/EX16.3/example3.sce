// calculate voltage gain 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 16-3, page 569

clear; clc; close;

// Given data
f=10;// cutoff frequency in hertz
Avmid=100000;// midband voltage gain
f1=100;// input frequency in hertz
f2=10^3;// input frequency in hertz
f3=10^4;// input frequency in hertz
f4=10^5;// input frequency in hertz
f5=10^6;// input frequency in hertz

// Calculations
Av1=Avmid/((1+(f1/f)^2)^0.5)// Voltage gain for input frequency below midband
Av2=Avmid/((1+(f2/f)^2)^0.5)// Voltage gain for input frequency below midband
Av3=Avmid/((1+(f3/f)^2)^0.5)// Voltage gain for input frequency below midband
Av4=Avmid/((1+(f4/f)^2)^0.5)// Voltage gain for input frequency below midband
Av5=Avmid/((1+(f5/f)^2)^0.5)// Voltage gain for input frequency below midband
disp(Av1,"Voltage gain 1=")
disp(Av2,"Voltage gain 2=")
disp(Av3,"Voltage gain 3=")
disp(Av4,"Voltage gain 4=")
disp(Av5,"Voltage gain 5=")

// Result
// Voltage gain for an input frequency of 100 Hertz is approximately 10000 
// Voltage gain for an input frequency of 1000 Hertz is approximately 1000 
// Voltage gain for an input frequency of 1000 Hertz is approximately 100 
// Voltage gain for an input frequency of 10000Hertz is approximately 10 
// Voltage gain for an input frequency of 100000 Hertz is approximately 1 