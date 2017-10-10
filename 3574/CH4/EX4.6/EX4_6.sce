// Example 4.6
// Determine (a) Power input (b) Total losses (c) Air gap power (d) Shaft speed
// (e) Power factor (f) Combined windage, friction and stray load loss
// (g) Shaft torque
// Page No. 159

clc;
clear;
close;

// Given data
Pshaft=74600;                // Shaft power
eeta=0.910;                  // Rated efficiency
ns=1200;                     // Speed of stator
Pcore=1697;                  // Power in core
Pscl=2803;                   // Stator copper loss
Prcl=1549;                   // Rotor copper loss
fs=60;                       // Synchronous frequency
p=6;                         // Number of poles
Vline=230;                   // Line voltage
Iline=248;                   // Line current

// (a) Power input
Pin=Pshaft/eeta;             // Parallel resistance

// (b) Total losses
Ploss=Pin-Pshaft;

//(c) Air gap power
Pgap=Pin-Pcore-Pscl;

// (d) Shaft speed
s=Prcl/Pgap;      // Parallel resistance
ns=120*fs/p;
nr=ns*(1-s);

// (e) Power factor
Sin=sqrt(3)*Vline*Iline;
FP=Pin/Sin;

//(f) Combined windage, friction and stray load loss
Closs=Ploss-Pcore-Pscl-Prcl;

//(g) Shaft torque
Tshaft=5252*100/nr;


// Display result on command window
printf("\n Power input = %0.0f W",Pin);
printf("\n Total losses = %0.0f W",Ploss);
printf("\n Air gap power = %0.0f W ",Pgap);
printf("\n Shaft speed = %0.0f r/min ",nr);
printf("\n Power factor = %0.2f ",FP);
printf("\n Combined windage, friction and stray load loss = %0.0f W ",Closs);
printf("\n Shaft torque = %0.1f lb-ft ",Tshaft);
