// Calculate circuit parameters of a Emitter Follower
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 5-8 in page 251

clear; clc; close;

// Given data
Rs=0.5*10^3; // Source resistance in ohm
Rl=5*10^3; // Load resistance in ohm
hfe=50; // h-parameter value of the BJT
hie=1*10^3; // h-parameter value of the BJT in ohm
hoe=25*10^-6; // h-parameter value of the BJT in A/V

// Calculations
Ai=(1+hfe)/(1+hoe*Rl);
Ri=hie+Ai*Rl;
Av=1-(hie/Ri);
Avs=Av*(Ri/(Ri+Rs));

printf("(a)The current gain of circuit Ai = %0.1f \n",Ai);
printf("(b)The input resistance of circuit Ri = %0.2e ohm \n",Ri);
printf("(c)The voltage gain of circuit Av = %0.4f \n",Av);
printf("(d)The voltage gain of circuit Avs = %0.4f \n",Avs);

// Results
// (a) The current gain of circuit Ai=45.3
// (b) The input resistance of circuit Ri=227 ohm
// (c) The voltage gain of circuit Av=0.9956
// (d) The voltage gain of circuit Avs=0.9934