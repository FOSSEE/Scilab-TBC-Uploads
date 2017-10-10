// Exa 10.4
// To calculate the 3-dB beam width of a linear element antenna.

clc;
clear all;

G=12; //Gain of antenna in dBi

//solution
Theta=101.5/10^(G/10);
printf('The 3-dB beam width of a linear element antenna is %.1f degrees',Theta);
