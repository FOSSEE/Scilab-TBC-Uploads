//Example14.2 // to determine the current drawn from the dual power supply 
clc;
clear;
close;
V = 10 ;  // V
P = 500 ; // mW

// we assume that  each power supply provides half power supply to IC
P1 = (P/2);

// the total power dissipation of the IC
// P1 = V*I ;
I = P1/V ;
disp('the total power dissipation of the IC is = '+string(I)+' mA ');
