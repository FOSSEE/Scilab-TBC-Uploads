// Grob's Basic Electronics 11e
// Chapter No. 31
// Example No. 31_4
clear; clc;
// Calculate the following quantities Pl, Pcc & percent efficiency

// Given data

Rl = 8;             // Load Resistor=8 Ohms
Vopp = 50;          // Output Voltage(p-p)=50 Volts(p-p)
Vcc = 30;           // Supply Voltage(Collector)=30 Volts
Vopk = Vopp/2;      // Output Voltage(peak)

Pl = (Vopp*Vopp)/(8*Rl);
disp (Pl,'The Load Power in Watts');

Pcc = Vcc*0.636*(Vopk/Rl);
disp (Pcc,'The DC Input Power in Watts')

efficiency = ((Pl/Pcc)*100);
disp (efficiency,'The Efficiency in % is');
