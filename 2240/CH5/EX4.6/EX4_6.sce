// Grob's Basic Electronics 11e
// Chapter No. 04
// Example No. 4_6
clc; clear;
// Assume that the series circuit in Fig. 4–20 has failed. A technician troubleshooting the circuit used a voltmeter to record the following resistor voltage drops. V1=0 V; V2=0 V; V3=24 V; V4=0 V. Based on these voltmeter readings, which component is defective and what type of defect is it? (Assume that only one component is defective.)

// Given data

R1 = 150;     // Resistor 1=150 Ohms
R2 = 120;     // Resistor 2=120 Ohms
R3 = 180;     // Resistor 3=180 Ohms
R4 = 150;     // Resistor 4=150 Ohms
Vt = 24;      // Applied Voltage=24 Volts

Rt = R1+R2+R3+R4;

I = Vt/Rt;

V1 = I*R1
disp (V1,'The Voltage Drop of Resistor R1 in Volts')

V2 = I*R2
disp (V2,'The Voltage Drop of Resistor R2 in Volts')

V3 = I*R3
disp (V3,'The Voltage Drop of Resistor R3 in Volts')

V4 = I*R4
disp (V4,'The Voltage Drop of Resistor R4 in Volts')

disp ('The Resistor R3 is defective since it is open circuit and drops all the voltage arround it')
