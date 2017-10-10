// Example 4.2
// Computation of (a) Frequency (b) Induced voltage of six pole induction motor
// Page No. 143

clc;
clear;
close;

// Given data
f=60;                // Frequency
p=6;                 // Number of poles
nr=1100;             // Rotor speed
Ebr=100;             // Blocked rotor voltage

// (a) Synchronous speed
ns=120*f/p;              // Synchronous speed

// (b) Slip
s=(ns-nr)/ns;              // Slip

// (c) Rotor frequency
fr=s*f;              // Rotor frequency

// (d) Rotor voltage
Er=s*Ebr;              // Rotor voltage


// Display result on command window
printf("\n Synchronous speed = %0.0f r/min ",ns);
printf("\n Slip = %0.4f  ",s);
printf("\n Rotor frequency = %0.1f Hz ",fr);
printf("\n Rotor voltage = %0.2f V ",Er);
