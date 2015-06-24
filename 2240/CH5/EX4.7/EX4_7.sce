// Grob's Basic Electronics 11e
// Chapter No. 04
// Example No. 4_7
clc; clear;
// Assume that the series circuit has failed. A technician troubleshooting the circuit used a voltmeter to record the following resistor voltage drops: V1  8 V;V2  6.4 V;V3  9.6 V;V4  0 V. Based on the voltmeter readings, which component is defective and what type of defect is it? (Assume that only one component is defective.)

// Given data

R1 = 150;     // Resistor 1=150 Ohms
R2 = 120;     // Resistor 2=120 Ohms
R3 = 180;     // Resistor 3=180 Ohms
R4 = 150;     // Resistor 4=150 Ohms
Vt = 24;      // Applied Voltage=24 Volts

disp ('Calculated from the Circuit')

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

disp ('The normal values for V1 , V2 , V3 , and V4 are 6 V, 4.8 V, 7.2 V, and 6 V, respectively. Comparing the calculated values with those measured reveals that V1 , V2 , and V3 have increased from their normal values. This indicates that the current has increased, which is why we have a larger voltage drop across these resistors. The measured value of 0 V for V4 shows a signifi cant drop from its normal value of 6 V. The only way this resistor can have 0 V, when all other resistors show an increase in voltage, is if R4 is shorted. Then V4=I*R4=I*0(Ohms)=0 V.')
