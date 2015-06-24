
//Exa:5.9
clc;
clear;
close;
//Given:
Pd=10;//in degrees
Fm=100;//in Hz
fd=Pd*(%pi/180)*Fm;
printf("\n frequency deviation = %f KHz",fd*10^-3);
