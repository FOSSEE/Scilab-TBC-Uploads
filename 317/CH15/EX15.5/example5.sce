// find peak output voltage and frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 15-5, page 532

clear; clc; close;

// Given data
R1=900;// from the figure in ohms
R2=100;// from the figure in ohms
Vgt=1 ;// gate trigger voltage in volts
Igt=200*10^-6;// gate trigger current in amperes
C=0.2*10^-6;// capacitance in faraday
R=50;// thevenin resistance facing the capacitance when the SCR is off

// Calculations
Rth=R1*R2/(R1+R2);// thevenin resistance
Rg=Rth;// in ohms 
Vin=Vgt + (Igt*Rg);// input voltage in volts
Vpeak=10*Vin;// because of 10:1 voltage divider, the output voltage is 10(Vin)
T=0.2*R*C ;// period of sawtooth is 20% of time constant in seconds
f=1/T;// frequency in Hertz
disp("Volts",Vpeak,"Peak output voltage=")
disp("hertz",f,"frequency=")

// Results
// Peak output voltage is 10.1 Volts
// Frequency is 50 KHertz