// Example 5.19
// Computation of (a) Locked rotor current per phase and minimum locked rotor 
// torque when starting (b) Locked rotor current per phase when motor is delta 
// connected (c) Code letter 
// Page No.233

clc;
clear all;
close;

// Given data
V=460;                 // Rated Voltage
Z=0.547;               // Locked rotor impedance
n=1750;                // Speed of machine
hp=60;                 // Horsepower rating of device
f=60;                  // Frequency of motor 


// (a) Locked rotor current per phase and minimum locked rotor torque 
Vphase=V/sqrt(3);        // Voltage/phase
Ilr1=Vphase/Z;            // Locked rotor current/phase
Trated=hp*5252/(n);      // Rated torque
Tlr=1.4*Trated;          // Locked rotor torque
T2=Tlr*(Vphase/V)^2;

// (b) Locked rotor current per phase when motor is delta connected 
Ilr=V/Z;                 // Locked rotor current/phase
Il=Ilr*sqrt(3);          // Line current

// (c) Code letter
Slr=sqrt(3)*V*Il/1000;   // Code letter at rated voltage
kVA=Slr/f;

// Display result on command window

printf("\n Locked rotor current per phase = %0.1f A",Ilr1);
printf("\n Minimum locked rotor torque = %0.0f lb-ft",T2);
printf("\n Locked rotor current per phase when motor is delta connected = %0.0f A ",Il);
printf("\n Code letter = %0.1f",kVA);


