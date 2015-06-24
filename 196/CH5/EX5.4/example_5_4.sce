//Chapter 5
//Example 5-4
//ProbOnZenerCurrentAndVoltage 
//Page 125,126, Figure 5-3(a)
clear;clc;
//Given
Vo = 10.3 ; //Voltage across the load resistor
Ei = 5 ; //Input voltage
Ri = 1*10^3 ; //Input Resistance
//Example 5-4(a)
I = Ei / Ri ; //Zener Current
printf ( "\n\n Zener Current = %.4f A", I )
//Example 5-4(b)
Vt = Vo - Ei ; //Zener Voltage
printf ( "\n\n Zener Voltage = %.4f V", Vt )