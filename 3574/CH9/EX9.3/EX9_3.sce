// Example 9.3
// Determine (a) Frequency of generator A (b) Frequency of generator B 
// (c) Frequency of bus
// Page 358

clc;
clear;
close;

// Given data
GSR=0.020;                   // Governor speed regulation
Frated=60;                   // Rated frequency
deltaPa=100;                 // Change in load (200-100 =100 KW)
Prated=500;                  // Rated power of both generators
       

// (a) Frequency of generator A 
deltaFa=(GSR*Frated*deltaPa)/Prated; // Change in frequency due to change in load
Fa=Frated+deltaFa;                   // Frequency of generator A

// (b) Frequency of generator B
deltaFb=0.24;                        // Since both machines are identical
Fb=Frated-deltaFb;

// (c) Frequency of bus
Fbus=Fb;                             // Bus frequency is frequency of generator B

// Display result on command window
printf("\n Frequency of generator A = %0.2f Hz ",Fa);
printf("\n Frequency of generator B = %0.2f Hz ",Fb);
printf("\n Frequency of bus = %0.2f Hz ",Fbus);
 
