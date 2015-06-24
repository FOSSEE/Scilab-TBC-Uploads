// Grob's Basic Electronics 11e
// Chapter No. 23
// Example No. 23_2
clc; clear;
// The following branch currents are supplied from a 50-mV source: Ir=1.8 mA; Il=2.8 mA; Ic=1 mA. Calculate It, Zeq, and Theta I.

// Given data

Va = 50*10^-3;      // Applied voltage=50m Volts
Ir = 1.8*10^-3;     // Ir=1.8 mAmps
Il = 2.8*10^-3;     // Ir=2.8 mAmps
Ic = 1*10^-3;       // Ic=1 mAmps

nI = Il-Ic;         // net current
Ir1 = Ir*Ir;
nI1 = nI*nI;

It = sqrt(Ir1+nI1);
disp (It,'The Total Current It in Amps')
disp ('i.e 2.55 mAmps')

Zeq = Va/It;
disp (Zeq,'The Equivqlent Impedence Zeq in Ohms')
disp ('Appox 19.61 Ohms')

Oz = atand(-(nI/Ir));
disp (Oz, 'Theta z in Degree');
