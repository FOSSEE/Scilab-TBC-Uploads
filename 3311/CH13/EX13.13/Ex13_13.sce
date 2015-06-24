// chapter 13
// example 13.13
// Determine junction temperature
// page-840
clear;
clc;
// given
E=440; // in V
I0=960; // in A 
Ta=80; // in ambient temperature
Pa=150; // in W (on state power loss)
Q_JC=0.15; // in degree C/W
Q_CS=0.075; // in degree C/W
Q_SA=0.45; // in degree C/W
// calculate
T_J=Ta+Pa*(Q_JC+Q_CS+Q_SA); // calculation of junction temperature
printf("\nThe junction temperature is \t T_J=%.2f degree C",T_J);
// Note :The answer vary slightly due to precise calculation