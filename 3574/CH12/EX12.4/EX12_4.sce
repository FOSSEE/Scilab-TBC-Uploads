// Example 12.4
// Computation of (a) Required resistance of a noninductive diverter that will 
// bypass 27 percent of the total armature current(b) Power rating of the 
// diverter
// Page No. 494

clc;
clear;
close;

// Given data
Rs=0.00306;               // Shunt generator resistance rating
Is=0.73;                  // Shunt generator current rating
Id1=0.27;                 // Armature winding resistance
Pload=170000;             // Load of power
VT=250;                   // Shunt generator voltage rating
Id2=680;                  // No load voltage
Rd=0.27;                  // Resistance drop

// (a) Required resistance of a noninductive diverter that will bypass 
// 27 percent of the total armature current
Rd=Rs*Is/Id1;


// (b) Power rating of the diverter
Ia=Pload/VT; 
Pd=((Id1*Id2)^2)*Rd;



//Display result on command window
printf("\n Required resistance of a noninductive diverter = %0.5f Ohm ",Rd);
printf("\n Power rating of the diverter = %0.0f W ",Pd);
