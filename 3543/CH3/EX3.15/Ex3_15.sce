// Example 3.15 
// Calculation of external efficiency 
// Page no 484

clc;
clear;
close;

//Given data
ne1=0.20;       //Total efficiency 
V=3;            // Voltage applied
Eg=1.43;        // Bandgap energy

// External efficiency
ne=(ne1*Eg/V)*100;

//Display result on command window
printf("\n External efficiency of the device (in percentage)= %0.1f  ",ne);

