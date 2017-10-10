// Exa 5.2

clc;
clear;

// Given data

// Circuit of Schmitt trigger

R2=100; // Ohms
R1=50*10^3; // Ohms
Vref=0; //Volts
Vi=1; // peak to peak(Volts)
Vsat=14;// sSaturation voltage (Volts)

// Solution

printf('Using Equations (5.1) and (5.2), we get calculated values as follows -\n ' );
Vut=(R2*Vsat)/(R1+R2);
printf(' Upper threshold voltage (VUT) = %d mV. \n ',round(Vut*1000));
Vlt=(R2*-Vsat)/(R1+R2);
printf(' Lower threshold voltage (VLT) = %d mV. \n ',round(Vlt*1000));
