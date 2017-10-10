// Example 9.11
// Determine (a) Equivalent armature resistance (b) Synchronous reactance 
// (c) Short-circuit ratio
// Page 377

clc;
clear;
close;

// Given data
Vdc=10.35;                 // DC voltage
Idc=52.80;                 // DC current
VOCph=240/sqrt(3);         // Open-circuit phase voltage
ISCph=115.65;              // Short-circuit phase current
P=50000;  
V=240;                     // Supply voltage

// (a) Equivalent armature resistance
Rdc=Vdc/Idc;               // DC resistance
Rgamma=Rdc/2;
Ra=1.2*Rgamma;             // Armature resistance

// (b) Synchronous reactance 
Zs= VOCph/ISCph;          // Synchronous impedance/phase
Xs=sqrt(Zs^2-Ra^2);

// (c) Short-circuit ratio
Sbase=P/3;                // Power/phase
Vbase=V/sqrt(3);          // Voltage/phase
Zbase=Vbase^2/Sbase;
Xpu=Xs/Zbase;             // Per unit synchronous reactance
SCR=1/Xpu;                // Short-circuit ratio


// Display result on command window
printf("\n Equivalent armature resistance = %0.4f Ohm ",Ra);
printf("\n Synchronous reactance = %0.4f Ohm ",Xs);
printf("\n Short-circuit ratio = %0.3f ",SCR);

