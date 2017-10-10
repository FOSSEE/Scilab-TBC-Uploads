// Example 3.7
// Computation of (a) Bank ratio (b) Transformer ratio (c) Rated line and phase 
// currents for the high side (d) Rated line and phase currents for the low side
// Page No. 113

clc;
clear;
close;

// Given data
VLINEHS=4160;               // Number of turns in the high side
VLINELS=240;                // Number of turns in the low side
VHS=2400;                   // Voltage at the high side
S=4800;                     // Supply voltage
Vline=150000;               // Transformer rating

// (a) Bank ratio
bankratio=VLINEHS/VLINELS;    

// (b) Transformer ratio
Vphasep= VLINEHS/  sqrt(3);   // For wye primary
Vphases=VLINELS               // For secondary
TR=Vphasep/Vphases;           // Transformer ratio 

//(c) Rated line and phase currents for the high side 
Ilinew=Vline/(sqrt(3)*VLINEHS);
Iphasew=Ilinew;

// (d) Rated line and phase currents for the low side
Ilined=Vline/(sqrt(3)*VLINELS);   
Iphased=Ilined/sqrt(3);


// Display result on command window
printf("\n Bank ratio = %0.1f  ",bankratio);
printf("\n Transformer ratio = %0.1f  ",TR);
printf("\n Rated line current for the high side = %0.1f A ",Ilinew);
printf("\n Rated phase current for the high side = %0.1f A ",Iphasew);
printf("\n Rated line  current for the low side = %0.1f A ",Ilined);
printf("\n Rated phase current for the low side = %0.1f A ",Iphased);
