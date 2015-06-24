// Grob's Basic Electronics 11e
// Chapter No. 31
// Example No. 31_3
clear; clc;
//Calculate the following quantities: Pl, Pcc, Pdmax & percent efficiency

// Given data

Vin = 20;       // Input Voltage=20 Volts(p-p)
Vopp = 20;      // Output Voltage(p-p)=20 Volts(p-p)
Vcc = 24;       // Supply Voltage(Collector)=24 Volts
Vop = 10;       // Output Voltage(peak)=10 Volts
Rl = 8;         // Load Resistor=8 Ohms

Vopp1 = Vopp*Vopp;
Pl = (Vopp1/(8*Rl));
disp (Pl,'The Load Power in Watts');

Icc = ((Vop/Rl)*0.318);

Pcc = Vcc*Icc
disp (Pcc,'The DC Input Power in Watts');

eff = ((Pl/Pcc)*100);
disp (eff,'The Efficiency in % is');

Pd = (Vcc*Vcc)/(40*Rl);
disp (Pd,'The Maximum Power Dissipation in Watts');
