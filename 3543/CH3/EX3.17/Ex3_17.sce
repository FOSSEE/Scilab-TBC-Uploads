// Example 3.17 
//Computation of conversion efficiency 
// Page no 484

clc;
clear;

//Given data
i=10*10^-6;            // Device current
p=5;                  // Electrical power
op=50 *10^-6;         // Optical power
ip=5*10*10^-3;        // Input power

//Conversion efficiency
c=op/ip*100;              
//Display result on command window
printf("\n Conversion efficiency (in percentage)= %0.1f  ",c);

