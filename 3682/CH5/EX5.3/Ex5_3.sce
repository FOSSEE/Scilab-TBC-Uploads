// Exa 5.3

clc;
clear;

// Given data

// A Schmitt trigger as shown in fig. 5.9- circuit for example 5.3

VUT=0; // Upper threshold(V)
VH=0.2; // Hysteresis width(V)
F=1000; // Hz
Vpp=4; // peak to peak voltage(V)

// Solution

// Since VH=VUT-VLT
VLT=VUT-VH;

// From fig. 5.9, the angle θ can be calculated as 
// VLT = (Vpp/2)* sin(%pi+ θ);
// Rearranging above equation
Theta = asin(VLT/-(Vpp/2)); // in radians
T= 1/F; // Time period(sec)

// wTθ = 2*%pi*F*Tθ = 0.1
// Rearranging
Ttheta= Theta/(2*%pi*F);

T1=T/2 + Ttheta;
T2=T/2 - Ttheta;

printf('The duration of positive pulse(T1) = %.3f msec and duration of negative pulse(T2) = %.3f msec. \n ',T1*1000,T2*1000);
