// Example 1.8
// Computation of (a) Number of cycles per revolution (b) Number of electrical 
// degrees per revolution (c) Frequency in hertz
// Page No. 31

clc;
clear all;
close;

// Given data
P=80;               // Number of poles
rpers=20;           // Revolutions per second

// (a)  Number of cycles per revolution
n=P/2;      

// (b) Number of electrical degrees per revolution
Elecdeg=360*P/2;                  

// (c) Frequency in hertz
f=P*rpers/2;                 

//Display result on command window
printf("\n Number of cycles per revolution = %0.0f cycles ",n);
printf("\n Number of electrical degrees per revolution = %0.0f  ",Elecdeg);
printf("\n Frequency in hertz = %0.0f Hz ",f);
