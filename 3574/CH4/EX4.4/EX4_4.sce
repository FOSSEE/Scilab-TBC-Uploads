// Example 4.4
// Determine (a) Total three phase apparent power crossing the air gap 
// (b) Active and reactive components (c) Rotor power factor
// Page No. 149

clc;
clear;
close;

// Given data
Ebr=150;                // Blocked rotor voltage per phase
Ir_Mag=44.421;          // Rotor current magnitude
Ir_Ang=-9.2;            // Rotor current angle
Ir_magConj=9.2; 


// (a) Total three phase apparent power crossing the air gap 
Sgap_Mag=3*Ebr*Ir_Mag;     // Apparent power crossing the air gap magnitude
Sgap_Ang=Ir_magConj;       // Apparent power crossing the air gap angle

// Polar to Complex form
Sgap_R=Sgap_Mag*cos(-Sgap_Ang*%pi/180); // Real part of complex number
Sgap_I=Sgap_Mag*sin(Sgap_Ang*%pi/180); //Imaginary part of complex number
Sgap=ceil(Sgap_R)+%i*ceil(Sgap_I);

// (b) Active and reactive components 
Pgap=Sgap_R;               // Active power component
Qgap=Sgap_I;               // Reactive power component

// (c) Rotor power factor
FP=cosd(Ir_magConj);

// Display result on command window
printf("\n Total three phase apparent power crossing the air gap (VA) =");
disp(Sgap);
printf("\n Active power component = %0.0f W",Pgap);
printf("\n Reactive power component = %0.0f var ",Qgap);
printf("\n Rotor power factor = %0.2f ",FP);

