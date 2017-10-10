// Example 4.23  
// Calculation of overall external efficiency of a Laser diode
// Page no 486

clc;
clear;
close;

//Given data
eg=1.43;            // Bandgap energy
v=2.5;              // Voltage applied
nd=0.30;            // Optical efficiency of laser diode

//// Overall external efficiency 
ne=(nd*eg/v)*100;   

//Display result in the command window
printf("\n Overall external efficiency (percentage)= %0.0f .",ne);
