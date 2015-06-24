// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_7
clc; clear;
// In Fig. 25–9, assume that with a 4-mVac input signal for VT, the voltage across R1 is 2 mV when R1 is 225-kOhms. Determine Zeq and Q.

// Given data

vin = 4*10^-3;      // Input AC signal=4 mVac
R1 = 225*10^3;      // Resistance1=225 kOhms
vR1 = 2*10^-3;      // Voltage across Resistor1=2 mVac
xl = 1.5*10^3;      // Inductive Reactance=1.5 kOhms

disp ('Because they divide Vt equally')

Zeq = R1;
disp (Zeq,'The Equivalent Impedence in Ohms')
disp ('i.e 225 kOhms')

Q = Zeq/xl;
disp (Q,'The Q is')
