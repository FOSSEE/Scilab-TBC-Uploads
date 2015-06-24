//Chapter 5
//Example 5-5
//ProbOnOpampParameters 
//Page 126, Figure 5-3(b)
clear;clc;
//Given
Ei = 1 ; //Reference voltage
Ri = 1*10^3 ; //Input Resistance
Vo = 0.6 ; //Outpur Voltage
//example 5-5(a)
I = Ei / Ri ; //Diode Current
printf ( "\n\n Diode Current = %.4f A ", I )
//example 5-5(b)
Vdiode = Vo ;
printf ( "\n\n Voltage drop across the diode = %.4f V ", Vdiode )
