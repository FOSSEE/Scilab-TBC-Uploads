//Chapter 5
//Example 5-8
//ProbOnShortCircuitCurrent 
//Page 133,134, Figure 5-8(c)
clear;clc;
//Given
Vo = 5 ;//Output Voltage
Rf = 100*10^3 ; //Feedback Resistance
Isc = Vo / Rf ; //Short Circuit Current
printf ( "\n\n Short Circuit Current = %.7f A " , Isc )
