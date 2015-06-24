clear;
clc;
//Example 2.11
I=0.01;//(A) diode current
V_Y=1.7;//(V) forward bias voltage drop
Vt=0.2;//(V)
R=(5-V_Y-Vt)/I;
printf('\nresistance=%0.1f Ohm',R)
