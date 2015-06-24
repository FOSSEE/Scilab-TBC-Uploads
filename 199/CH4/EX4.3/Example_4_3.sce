// Chapter4
// Page.No-121, Figure.No-4.14
// Example_4_3
// Design of input offset voltage-compensating network
// Given
clear;clc;
R1=1*10^3;Rf=10*10^3;Rc=10;
Af=1+Rf/(R1+Rc); // Closed loop gain of non-inverting amplifier
printf("\n Closed loop gain of non-inverting amplifier is = %.1f \n",Af) // Result