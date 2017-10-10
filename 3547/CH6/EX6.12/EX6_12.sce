// Example 6.12
// Calculation of the ASE power spectral density per polarization.
// Page no 296

clc;
clear;
close;

//Given data

si=30;                // Electrical SNRs at the amplifier input
so=25;               // Electrical SNRs at the amplifier output
po=2;                // Signal power at output 
pi=-13;             // Signal power at input 
h=6.626*10^-34;     // Planck constant
f=195*10^12;

// The ASE power spectral density per polarization
fn=si-so;
fn=10^(fn/10);
G=po-pi;
G=10^(G/10);
r=(h*f*(G*fn-1))/2;
r=r*10^18;

//Displaying results in the command window            
printf("\n The ASE power spectral density per polarization = %0.3f x 10^-18 W/Hz ",r);



