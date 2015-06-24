//chapter 8
//example 8.7
//Calculate Hystersis loss per cycle
//page 238
clear;
clc;
//given
A=100; // in m^2 (area of Hysteresis loop)
B=0.01; // in Wb/m^2 (unit space along vertical axis or magnetic flux density)
H=40; // in A/m (unit space along horizontal axis or magnetic fild ntensity)
//calculate
H_L=A*B*H; // calculation of magnetic intensity
printf('\nThe Hystersis loss per cycle is  %.f J/m^2',H_L);
