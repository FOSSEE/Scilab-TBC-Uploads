//Chapter 8
//Example 8-7
//ProbOnVoltages 
//Page 226,227, Figure 8-9
clear;clc;
//Given
Vre = 1.2 ; Re = 1*10^3 ;Vce = 5 ;Vcc = 15; //Voltages in the circuit
Ie = Vre / Re ;
Vcol = Vce + Vre ;
Vrl = Vcc - Vcol ;
printf ( "\n\n Collector Voltage = %.4f V ", Vcol )
printf ( "\n\n Voltage across Rl  = %.4f V ", Vrl )