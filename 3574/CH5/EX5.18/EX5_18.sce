// Example 5.18
// Computation of (a) Locked rotor torque and the expected average in rush 
// current (b) Repeat part (a) assuming motor is started at reduced voltage 
// with 65% tap (c) In rush line current line current when starting at reduced 
// voltage
// Page No. 231

clc;
clear all;
close;

// Given data
P=125;                 // Rated Voltage
n=1141;                // Speed of machine
hp=125;                // Horsepower rating of device 
Vline=460;             // Line voltage
ns=1200;               // Stator speed
s=0.125;               // Slip
ILS=683;               // Current at low side

// (a) Locked rotor torque and the expected average in rush current
Trated=P*5252/(n);                 // Rated torque
Tlr=1.25*Trated;                   // Locked rotor torque
kVA=(6.3+7.1)/2;
Ilr=(kVA*1000*hp)/(Vline*sqrt(3)); // In-rush current

// (b) Locked rotor torque and the expected average in rush current when motor 
// is started at reduced voltage
V2=0.65*Vline;                    // Voltage impressed across the stator
I=Ilr*0.65;                       // Average in-rush current
T2=Tlr*(V2/Vline)^2;              // Locked rotor toreque
nr=ns*(1-s);

// (c) In rush line current line current when starting at reduced voltage
a=1/0.65;                         // Bank ratio of autotransformer
IHS=ILS/a;

// Display result on command window
printf("\n Locked rotor torque = %0.1f lb-ft ",Tlr);
printf("\n Expected average in-rush current = %0.0f A ",Ilr);
printf("\n Locked rotor torque when motor is started at reduced voltage = %0.1f lb-ft ",T2);
printf("\n In-rush line current = %0.0f A",IHS);


