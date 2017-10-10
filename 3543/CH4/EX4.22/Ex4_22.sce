// Example 4.22  
// Computation of overall external efficiency
// Page no 486

clc;
clear;
close;

//Given data
eg=1.43;            // Bandgap energy
v=2.5;              // Electrical supply Voltage
nd=0.18;            // Optical efficiency of laser diode

// Computation of overall external efficiency
ne=(nd*eg/v)*100;           

//Display result in the command window
printf("\n Overall external efficiency (percentage)= %0.0f .",ne);

