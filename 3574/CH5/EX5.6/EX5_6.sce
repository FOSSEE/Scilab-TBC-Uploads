// Example 5.6
// Determine (a) New operating speed if a system disturbance causes a 10% drop
// in voltage and 6% drop in frequency (b) New shaft horsepower.
// Page No. 190

clc;
clear;
close;

// Given data
etaV=0.90;               // Efficiency related to voltage
V=230;                   // Voltage
etaF=0.94;               // Efficiency related to voltage
f=60;                    // Frequency
N=6;                     // Number of poles
nr1=1175;                // Speed of motor
P=20;                    // Horsepower of motor

// (a)  New operating speed if a system disturbance causes a 10% drop in 
// voltage and 6% drop in frequency
V2=etaV*V;              // New voltage after 10% drop
f2=etaF*f;              // New frequency after 6% drop
ns1=120*f/N;
ns2=120*0.94*f/N;
s1=(ns1-nr1)/ns1;       // Speed difference

s2=s1*((V/V2)^2)*(f2/f);  
nr2=ns2*(1-s2);         // New speed

// (b) New shaft horsepower
P2=P*(nr2/nr1);         // With a constant torque load T2=T1

// Display result on command window
printf("\n New operating speed in case of voltage and frequency drop = %0.0f r/min ",nr2);
printf("\n New shaft horsepower = %0.1f hp ",P2);

