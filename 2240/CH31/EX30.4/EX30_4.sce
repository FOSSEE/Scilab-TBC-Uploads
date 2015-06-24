// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_4
clear; clc;
// Calculate Vg, Vs, Id, Vd.

// Given Data

R1 = 390*10^3;      // Resistor 1=390k Ohms
R2 = 100*10^3;      // Resistor 2=100k Ohms
Rd = 1*10^3;        // Drain Resistor=1k Ohms
Vdd = 15;           // Supply Voltage(Drain)=15 Volts
Vgs = -1;           // Voltage Gate-Source=-1 Volts
Rs = 800;           // Source Resistor=800 Ohms

Vg = (R2/(R1+R2))*Vdd;
disp (Vg,'The Value of Vg in Volts')
disp ('i.e 3 Volts')

Vs = Vg-Vgs;
disp (Vs,'The Value of Vs in Volts')
disp ('i.e 4 Volts')

Id = Vs/Rs;
disp (Id,'The Value of Id in Amps.')
disp ('i.e 5 mAmps')

Vd = Vdd-Id*Rd
disp (Vd,'The Value of Vd in Volts')
disp ('Appox 10 Volts')
