// Example 11.6
// Determine (a) Torque developed when operating at rated speed (b) Developed 
// torque required at half rated speed (c) Armature voltage required for half 
// rated speed 
// Page No. 460

clc;
clear;
close;

// Given data

VT=750;                   // Voltage value of motor
Nf=1231;                  // Turns per pole of the shunt motor
Ra=0.00540;               // Armature resistance
RIPcw=0.00420;            // Interpole winding resistance
N=955;                    // Speed of shunt motor
Ia1=1675;                 // Armature current

// (a) Torque developed when operating at rated speed 

Racir=Ra+RIPcw;
Ea=VT-Ia1*Racir;
Pmech=Ea*Ia1;
TD=Pmech*5252/N/746;

// (b) Developed torque required at half rated speed 

T2=TD*(0.5*N/N)^2;

// (c) Armature voltage required for half rated speed 

Ia2=T2*Ia1/TD;
V2=(0.5*N/N)*(VT-Ia1*Racir) + Ia2*Racir ;

// Shaft load is adjusted to  value that limits the armature current to 115 % of rated current

//Display result on command window
printf("\n Torque developed when operating at rated speed = %0.1f lb-ft ",TD);
printf("\n Developed torque required at half rated speed = %0.1f lb-ft  ",T2);
printf("\n Armature voltage required for half rated speed = %0.1f V ",V2);
