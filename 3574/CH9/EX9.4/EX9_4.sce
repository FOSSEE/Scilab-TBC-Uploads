// Example 9.4
// Determine (a) Operating frequency (b) Load carried by each machine
// Page 359

clc;
clear;
close;

// Given data
GSR=0.0243;                  // Governor speed regulation
Frated=60;                   // Rated frequency
deltaPa=500;                 // Change in load for alternator A
Prateda=500;                 // Rated power of alternator A
deltaPb=400;                 // Change in load for alternator B
Pratedb=300;                 // Rated power of alternator B   
Pch=100;                     // Change is power (500-400=100 KW))            
Pchmach=200;                 // Power difference (500-300=200 KW)    

// (a) Operating frequency
// From the curve in figure 9.17
// GSR*Frated/Prated=deltaP/deltaP

deltaF=(deltaPa-deltaPb)/548.697;   // Change in frequency
Fbus=60.5-deltaF;
               

// (b) Load carried by each machine
deltaPa=(deltaF*Prateda)/(GSR*Frated); // Change in power for machine A
deltaPb=Pch-deltaPa;                   // Change in power for machine B
Pa=Pchmach+deltaPa;
Pb=Pchmach+deltaPb;

// Display result on command window
printf("\n Operating frequency = %0.3f Hz ",Fbus);
printf("\n Load carried by machine A = %0.2f kW",Pa);
printf("\n Load carried by machine B = %0.2f kW",Pb);
 
