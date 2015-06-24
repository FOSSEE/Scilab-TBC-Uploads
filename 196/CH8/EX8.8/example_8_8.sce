//Chapter 8
//Example 8-8
//ProbOnVtoIConverter 
//Page 228, Figure 8-10
clear;clc;
Rs = 1*10^3 ; E1 = 100*10^-3 ;
E2 = 0 ; Rl = 5*10^3 ;
Gain = 10 ;
Il = 10*((E1-E2)/Rs);
Vr = Il * Rs ;
Vref = Il * Rl ;
V9 = Vref + Gain*(E1 - E2);
printf ( "\n\n Current across Load Resistor = %.4f A ", Il )
printf ( "\n\n Voltage across R  = %.4f V ", Vr)
printf ( "\n\n Reference Voltage  = %.4f V ", Vref )
printf ( "\n\n Voltage at terminal 9  = %.4f V ", V9 ) 