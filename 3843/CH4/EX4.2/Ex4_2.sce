// Example 4_2
clc;funcprot(0);
// Given data
P_in=5;// hp
t=1;// hour
// By assumption
Q=0;// J
delPE=0;// J
delKE=0;// J

// Calculation
W=-P_in*t*(746)*(3600);// The work input in J
delU=-W;// The increase in internal energy in J
printf("\nThe increase in internal energy,delU=%1.3e J",delU);
