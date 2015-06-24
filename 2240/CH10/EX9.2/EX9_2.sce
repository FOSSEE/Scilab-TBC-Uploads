// Grob's Basic Electronics 11e
// Chapter No. 09
// Example No. 9_2
clc; clear;
// Apply Kirchhoff’s voltage law to solve for the voltages V(AG) & V(BG).

// Given data

V1 = 18;        // Source Voltage 1=18 Volts
V2 = 18;        // Source Voltage 2=18 Volts
R1 = 120;       // Resistor 10=120 Ohms
R2 = 100;       // Resistor 2=100 Ohms
R3 = 180;       // Resistor 3=180 Ohms

Vt = V1+V2;
Rt = R1+R2+R3;

I = Vt/Rt;

VR1 = I*R1;
VR2 = I*R2;
VR3 = I*R3;

// V1+V2-VR1-VR2-VR3=0 Sum of all Voltages in loop is ZERO
// V1+V2 = VR1+VR2+VR3 Total Applied Voltage = Total Dropped Voltage in Resistors

Vt = VR1+VR2+VR3;

VAG = VR2+VR3-V2;
disp (VAG,'The Voltage V(AG) in Volts')

VBG = V1-VR1-VR2;
disp (VBG,'The Voltage V(BG) in Volts')

