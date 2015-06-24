//Chapter 8
//Example 8-10
//ProbOnWheatstoneBridge 
//Page 232, Figure 8-12
clear;clc;
E = 1 ; 
DR = 0.001 ; R = 120 ; //Resistance in Ohm
Vout = (E*DR)/(4*R) ;
printf ( "\n\n Output of the Bridge = %.9f V ", Vout )