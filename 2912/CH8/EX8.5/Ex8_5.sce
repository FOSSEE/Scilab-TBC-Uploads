//chapter 8
//example 8.5
//Calculate current through the solenoid
//page 237
clear;
clc;
//given
H=4E3; // in A/m (magnetic field intensity)
N=60; // number of turns
l=12; // in cm (length of solenoid)
//calculate
n=N/(l*1E-2); // calculation of number of turns per unit metre
// Snice H=n*i;
i=H/n; // calculation of current through the solenoid
printf('\nThe current through the solenoid is \ti=%.f A',i);
