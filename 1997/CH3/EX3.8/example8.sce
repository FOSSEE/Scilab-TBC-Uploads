//Chapter-3, Problem 3.8 , Page107
//===========================================================================
clc;
clear;

//INPUT DATA

Vb1 = 20;//first blind speed in m/s
Vb2 = 30;//second blind speed in m/s
n1   =1 ;//since first blindspeed
n1   =2 ;//since second blindspeed
lamda = 3*10^-2;//wavelength in m;
//Calculations

PRF1 = (2*Vb2)/(n1*lamda);//pulse repetitive frequency in Hz of  First Radar;

PRF2 = (2*Vb2)/(n1*lamda);//pulse repetitive frequency in Hz of Second Radar;


//Output
mprintf('Ratio of pulse repetitive frequencies of the Radars is PRF1/PRF2 = %g',PRF1/PRF2);
