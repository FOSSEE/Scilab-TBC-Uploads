// Chapter3
// Page.No-96, Figure.No-3.14
// Example_3_5_a
// Gain Input resistance of the amplifier
// Given
clear;clc;
R1=1000;R2=1000;
Rf=10*10^3;R3=10*10^3;
AD=-Rf/R1; // Voltage gain
printf("\n Voltage gain is AD = %.f \n",AD) // Result
RiFx=R1; // Input resistance of inverting amplifier
printf("\n Input resistance of inverting amplifier is RiFx = %.f ohms \n",RiFx) // Result
RiFy=R2+R3; // Input resistance of non-inverting amplifier 
printf("\n Input resistance of non-inverting amplifier is RiFy = %.f ohms \n",RiFy) // Result