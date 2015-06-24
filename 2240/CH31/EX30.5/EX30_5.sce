// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_5
clc; clear;
// Calculate the value Drain Current Id and Drain Voltage Vd.

// Given Data

Vdd = 15;           // Supply Voltage(Drain)=15 Volts
Vbe = 0.7;          // Voltage Base-Emitter=0.7 Volts
Re = 2.2*10^3;      // Emitter Resistor=2.2 kOhms
Rd = 1*10^3;        // Drain Resistor=1 kOhms
Vee = 15;           // Supply Voltage(Emitter)=15 Volts


Ic = (Vee-Vbe)/Re;

Id = Ic;
disp (Id,'The Drain Current Id in Amps')
disp ('i.e 6.5 mAmps')

Vd = Vdd-Id*Rd;
disp (Vd,'The Drain Voltage Vd in Voltage')
