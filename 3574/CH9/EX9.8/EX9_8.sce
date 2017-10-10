// Example 9.8
// Computation of per-unit impedance of a generator
// Page 368

clc;
clear;
close;

// Given data
P=100000;                   // Power of synchronous generator
V=480;                      // Voltage of synchronous generator
Ra=0.0800;                  // Resistive component
Xs=2.3;                     // Reactive component

// Computation of per-unit impedance of a generator
Sbase=P/3;                  // Rated apparent power per phase
Vbase=V/sqrt(3);            // Rated voltage per phase
Zbase=Vbase^2/Sbase;        // Rated impedance
Rpu=Ra/Zbase;               // Per unit resistance
Xpu=Xs/Zbase;               // Per unit reactance

Zpu=Rpu+%i*Xpu;             // Per unit impedance

// Complex to Polar form...
Zpu_Mag=sqrt(real(Zpu)^2+imag(Zpu)^2);       // Magnitude part
Zpu_Ang = atan(imag(Zpu),real(Zpu))*180/%pi; // Angle part 

// Display result on command window
printf("\n Per-unit impedance magnitude = %0.4f Ohm ",Zpu_Mag);
printf("\n Per-unit impedance angle = %0.2f deg ",Zpu_Ang);
