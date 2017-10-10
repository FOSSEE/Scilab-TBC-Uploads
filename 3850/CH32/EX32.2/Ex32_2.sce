
//To Calculate the Drift Speed

//Example 32.2

clear;

clc;

i=1;//Current exist in a copper wire in Amperes

e=1.6*10^-19;//Charge of an electron

n=8.5*10^28;//Number of free electrons

A=2*10^-6;//Cross Section Area of copper wire

Vd=i/(A*n*e);//Formula for finding the drift speed of the electron

printf("Drift speed of electrons= %f mm/s",Vd*10^3);
