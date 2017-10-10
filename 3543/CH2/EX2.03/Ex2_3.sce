// Example 2.3 
// Calculation of potential difference
// page no 480

clc;
clear;
close;

// Given data
na=10^24;                     // Accepter impurity level
nd=10^22;                     // Donor impurity level
ni=2.4*10^19;                 // Intrinsic electron 
T=290;                        // Room temperature
e=1.602*10^-19;               // Electric charge
K=1.38*10^-23;                // Boltzmann constant


//Potential difference
V=(K*T)/e*(log(na*nd/(ni)^2));

//Display result on command window
printf("\n Potential difference (V) = %0.2f  ",V);
// The potential difference varies with the variation of Na, Nd and ni
