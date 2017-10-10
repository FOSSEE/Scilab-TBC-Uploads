// Example 6.4
// Computation of (a) Motor line current and motor phase current (b) Motor line 
// current and motor phase current if one line opens (c) Line and phase 
// currents if the power factor when single phasing is 82.0 percent.
// Page No. 274

clc;
clear;
close;

// Given data
Vline=2300;                    // Line voltage
Fp3ph=3;                       // Frequency of three phase
PF=0.844;                      // Power factor
PF1=0.820;                     // 82.2 percent power factor
Pin=350*746/(0.936*2);         // Input power


// (a) Motor line current and motor phase current

Iline3ph=Pin/(sqrt(3)*Vline*PF);
Iphase3ph=Iline3ph;

//(b) Motor line current and motor phase current if one line opens

Iline1ph=(sqrt(3)*Iline3ph*PF)/PF;
Iphase1ph=Iline1ph;

// (c) Line and phase currents if the power factoe when single phasing is 82.0 percent.

Iline=(Iline1ph*PF)/PF1;
Iphase=Iline;

// Display result on command window
printf("\n Motor line current = %0.1f A ",Iline3ph);
printf("\n Motor  phase current = %0.1f A ",Iphase3ph);
printf("\n Motor line current if one line opens = %0.1f A ",Iline1ph);
printf("\n Motor phase current if one line opens = %0.1f A ",Iphase1ph);
printf("\n Line  current if the power factor is 82.0 percent = %0.1f  A",Iline);
printf("\n Phase current if the power factor is 82.0 percent = %0.1f A ",Iphase);

