//clear//
//Caption:Program to calculate the Total Optical Power loss
//Example8.1
//page 287
clear;
clc;
close;
system_margin = 6; //in dB
alpha = 3.5; //attenuation in dB/Km
L =6; // Length of transmission path in Km
lc = 1; //connector loss in dB
PT = 2*lc+alpha*L+system_margin;
disp(PT,'The total optical power loss in dB PT =')
//Result
//The total optical power loss in dB PT =  29.
