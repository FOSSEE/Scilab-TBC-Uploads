// Example 2.8
// Computation of (a) Percent impedance (b) Rated high side current 
// (c) Equivalent resistance and reactance referred to the high side 
// (d) High side fault current if an accidental short circuit of 0.016 Ohm
// occurs at secondary when 230V impressed across the primary 
// Page No. 66

clc;
clear;
close;

// Given data
R=0.9;                 // Percent resistance
X=1.3;                 // Percent reactance
VHS=2400;              // High side voltage 
PV=75000;              // Transformer power rating
RPU=0.009              // Per unit resistance
XPU=0.013              // Per unit reactance
VLS=240;               // Low side voltage
Zshort=0.016;          // Short circuit resistance
VHS_Ang=0;             // High side voltage angle
VHS_Sec=2300;          // Secondary high side voltage

// (a) Percent impedance
Z=sqrt(R^2+X^2);
      
// (b) Rated high side current
IHS=PV/VHS;

//(c) Equivalent resistance referred to the high side
Req_HS=RPU*VHS/IHS; 
// Equivalent reactance referred to the high side                
Xeq_HS=XPU*VHS/IHS;

//(d) High side fault current
a=VHS/VLS;                               // Ratio of High side and low side voltages
Zin=Req_HS+%i*Xeq_HS+a^2*Zshort;         // Input impedance 
Zin_Mag=sqrt(real(Zin)^2+imag(Zin)^2);     // Magnitude part of input impedance
Zin_Ang= atan(imag(Zin),real(Zin))*180/%pi; // Angle part 
IHS_Mag=VHS_Sec/Zin_Mag;                    // High side current magnitude
IHS_Ang=VHS_Ang-Zin_Ang;


//Display result on command window
printf("\n Percent impedance = %0.2f Percent ",Z);
printf("\n Rated high side current = %0.2f A", IHS);
printf(" \n High side equivalent resistance = %0.3f Ohm",Req_HS);
printf(" \n High side equivalent reactance = %0.3f Ohm",Xeq_HS);
printf(" \n High side fault current magnitude = %0.0f Ohm",IHS_Mag);
printf(" \n High side fault current angle = %0.2f deg",IHS_Ang);
