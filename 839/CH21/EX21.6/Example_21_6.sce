//clear//
clear;
clc;

//Example 21.6
//Given
Dvprime = 10^-7; //[cm^2/s]
rp = 0.04/2; //[cm]
t = 30*60; //[s]
//Then,
beeta = Dvprime*t/rp^2;
//form Fig. 10.6
phi = 0.26;
// Murphree efficiency
neta_M = 1-phi;
//Here the average efficieny is nearly equal to the Murphree efficiency.
disp(4/neta_M,'The actual number of stages is') 
