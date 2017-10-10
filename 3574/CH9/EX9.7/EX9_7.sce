// Example 9.7
// Determine (a) Active and reactive components of the bus load (b) If the 
// power factor of generator A is 0.94 lagging, determine the reactive power
// supplied by each machine.
// Page 366

clc;
clear;
close;

// Given data
Pbuspower=500;              // Power supplied
Pind=200;                   // Induction motor power
PF=0.852;                   // Percent power factor
NA=2;                       // Number of alternators
LPF=0.94;                   // Lagging power factor

// (a) Active and reactive components of the bus load 
Pbus=Pbuspower+Pind*PF;      // Active component of the bus load
ThetaMot=acosd(PF);          // Power angle of motor
Qbus=Pind*sind(ThetaMot);    // Reactive component the bus load

// (b) Reactive power supplied by each machine
Pa=Pbus/NA;                  // Alternator A power
ThetaA=acosd(LPF);           // Alternator A angle
Qa=tand(ThetaA)*Pa;          // Reactive power supplied by machine A
Qb=Qbus-Qa;                  // Reactive power supplied by machine B                 


// Display result on command window
printf("\n Active component of the bus load = %0.2f kW ",Pbus);
printf("\n Reactive component of the bus load  = %0.1f kvar",Qbus);
printf("\n Reactive power supplied by machine A = %0.1f kvar",Qa);
printf("\n Reactive power supplied by machine B = %0.1f kvar",Qb);
