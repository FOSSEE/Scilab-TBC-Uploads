// Chapter3
// Page.No-99, Figure.No-3.16
// Example_3_6_a
// Voltage gain and input resistance of Op-amp
// Given
clear;clc;
R1=680;R3=680; // Both are in ohms
RF=6800;R2=6800; // Both are in ohms
Ri=2*10^6; // Open-loop input resistance of the op-amp
vx=-1.5;vy=-2; // Both are in volts
A=200000; // Open-loop Gain
AD=1+RF/R1; // Voltage gain
printf("\n Voltage gain is AD = %.f \n",AD) // Result
B=R2/(R2+R3);
RiFy=Ri*(1+A*B); // Input resistance of first stage amplifier
printf("\n Input resistance of first stage amplifier is RiFy = %.1f ohms \n",RiFy) // Result
B=R1/(R1+RF);
RiFx=Ri*(1+A*B); // Input resistance of second stage amplifier
printf("\n Input resistance of second stage amplifier is RiFx = %.1f ohms \n",RiFx) // Result