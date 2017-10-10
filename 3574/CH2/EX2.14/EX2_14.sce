// Example 2.14
// Determine (a) Magnetizing reactance and equivalent core-loss resistance
// (b) Per unit resistance, reactance and impedance of transformer windings
// (c) Voltage regulation when operating at rated load and 0.75 power factor lagging 
// Page No. 78

clc;
clear;
close;

// Given data
Poc=521;                    // Open circuit test power
Voc=230;                    // Open circuit voltage
Vo=230;                     // Output voltage
Ioc=13.04;                  // Open circuit current
Vsc=160.8;                  // Short circuit voltage
Isc=16.3;                   // Short circuit current
Psc=1200;                   // Short circuit power
S=75000;                    // Transformer rating
Vhs=4600;                   // High side voltage
FP=0.75;                    // Power factor lagging

// (a) Magnetizing reactance and equivalent core-loss resistance
Ife=Poc/Voc;               // Current rating
RfeLS=Vo/Ife;              // Core-loss resistance
Im=sqrt(Ioc^2-Ife^2);      // Magnetizing current
XMLS=Voc/Im;               // Magnetizing reactance

// (b) Per unit resistance, reactance and impedance of transformer windings
ZeqHS=Vsc/Isc;             // Equivalent impedance
ReqHS=Psc/Isc^2;           // Equivalent resistance
XeqHS=sqrt(ZeqHS^2 - ReqHS^2); // Equivalent reactance
Ihs=S/Vhs;                  // High side current
RPU=Ihs*ReqHS/Vhs;          // Per unit resistance
XPU=Ihs*XeqHS/Vhs;          // Per unit reactance
ZPU=RPU+%i*XPU;             // Per unit impedance
// Complex to Polar form...
ZPU_Mag=sqrt(real(ZPU)^2+imag(ZPU)^2);      // Magnitude part
ZPU_Ang=atan(imag(ZPU),real(ZPU))*180/%pi;  // Angle part 

// (c) Voltage regulation when operating at rated load and 0.75 power factor lagging 
// Transformer regulation  
Theta=acosd(FP);        
RegPU=sqrt( (RPU+FP)^2 +  (XPU+sind(Theta))^2 )-1;
// Transformer regulation in percentage
RegPU_Per=RegPU*100;

// Display result on command window
printf("\n Equivalent core-loss resistance = %0.1f Ohm",RfeLS);
printf("\n Magnetizing reactance = %0.2f Ohm", XMLS);
printf("\n Per unit resistance = %0.3f ", RPU);
printf("\n Per unit reactance = %0.3f ", XPU);
printf("\n Per unit impedance magnitude = %0.3f ", ZPU_Mag);
printf("\n Per unit impedance angle = %0.1f ", ZPU_Ang);
printf("\n Voltage regulation in percentage = %0.2f ", RegPU_Per);




