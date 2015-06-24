// Grob's Basic Electronics 11e
// Chapter No. 06
// Example No. 6_3
clc; clear;
// Assume that the series-parallel circuit in Fig. 6–15a has failed. A technician troubleshooting the circuit has measured the following voltages: V1 = 10.8 V; VAB = 9 V; V4 = 16.2 V. These voltage readings are shown in Fig. 6–15b. Based on the voltmeter readings shown, which component is defective and what type of defect does it have?

// Given data

V1 = 10.8;      // Voltage at R1=10.8 Volts
Vab = 9;        // Voltage at point (AB)=9 Volts
V4 = 16.2;      // Voltage at R4=16.2 Volts
R1 = 120;       // Resistor 1=120 Ohms

disp ('If we consider the resistance between points A and B as a single resistance, the circuit can be analyzed as if it were a simple series circuit. Notice that V1 and V4 have decreased from their normal values of 12-V and 18-V, respectively, whereas the voltage VAB across R2 and R3 has increased from 6-V to 9-V.')
disp ('Since the voltages V1 and V4 have decreased and the voltage VAB has increased, the defective component must be either R2 or R3 across points A and B.')

It = V1/R1;
Rab = Vab/It;
disp (Rab,'The Resistance R(AB) in Ohms')

disp ('Notice that the value of RAB is the same as that of R2. This means, of course, that R3 must be open.')
disp ('Another approach to finding which resistor is open would be to open the switch S1 and measure the resistance across points A and B. This measurement would show that the resistance RAB equals 100 Ohms, again indicating that the resistor R3 must be open.')
