// Grob's Basic Electronics 11e
// Chapter No. 06
// Example No. 6_4
clc; clear;
// Assume that the series-parallel circuit in Fig. 6–15a has failed. A technician troubleshooting the circuit has measured the following voltages: V1 = 14.4 V; VAB = 0 V; V4 = 21.6 V. These voltage readings are shown in Fig. 6–15c. Based on the voltmeter readings shown, which component is defective and what type of defect does it have?

// Given data

V1 = 14.4;      // Voltage at R1=14.4 Volts
Vab = 0;        // Voltage at point (AB)=0 Volts
V4 = 21.6;      // Voltage at R4=21.6 Volts
R1 = 120;       // Resistor 1=120 Ohms

disp ('Since the voltages V1 and V4 have both increased, and the voltage VAB has decreased, the defective component must be either R2 or R3 across points A and B. Because the voltage VAB is 0 V, either R2 or R3 must be shorted.')
disp ('But how can we find out which resistor is shorted? One way would be to measure the currents I2 and I3. The shorted component is the one with all the current.')
disp ('Another way to find out which resistor is shorted would be to open the switch S1 and measure the resistance across points A and B. Disconnect one lead of either R2 or R3 from point A while observing the ohmmeter. If removing the top lead of R3 from point A still shows a reading of 0 Ohms, then you know that R2 must be shorted. Similarly, if removing the top lead of R2 from point A (with R3 still connected at point A) still produces a reading of 0 Ohms, then you know that R3 is shorted.')
