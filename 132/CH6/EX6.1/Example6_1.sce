//Example 6.1
//Program to Plot the Characteristics and 
//Determine Dynamic Plate Resistance
clear;
clc ;
close ;
//Given Circuit Data
V=[0 0.5 1 1.5 2]; //V
I=[0 1.6 4 6.7 9.8]; //mA
//Plotting
plot(V,I);
a= gca ();
xlabel ('Plate Voltage (in V)');
ylabel ('Plate Current (in mA)');
title ('STATIC CHARACTERISTIC CURVE OF THE DIODE');
//Calculation
//Values from Characteristic Plot
dVp=0.5; //V
dIp=2.7*10^(-3); //A
rp=dVp/dIp; //Dynamic Plate Resistance
//Displaying The Results in Command Window
printf("\n\t The Dynamic Plate Resistance is rp= %f Ohms .",rp);