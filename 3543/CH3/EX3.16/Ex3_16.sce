// Example 3.16
//  Calculation of ratio of threshold current densities
// Page no 484

clc;
clear;
close;

// Given data
To1=160;                     // Device temperature
To2=55;                      // Device temperature
T1=293;
T2=353;
J81=exp(T1/To1);            // Threshold current density 
J21=exp(T2/To1);
J82=exp(T1/To2);; 
J22=exp(T2/To2);; 
cd1=J21/J81;               // Ratio of threshold current densities
cd2=J22/J82;

//Display result on command window
printf("\n Ratio of threshold current densities= %0.2f  ",cd1);
printf("\n Ratio of threshold current densities= %0.2f  ",cd2);
