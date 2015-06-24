//Chapter-3, Problem 3.1 , Page104
//===========================================================================
clc;
clear;

//INPUT DATA
PRF= 1500;//pulse repetitive frequency in Hz
lamda = 3*10^-2;//wavelength in m;

//Calculations
//n =1 gives lowest blind speed
n=1;

Vb = n*(lamda/2)*PRF;//blind speed in m/s


//Output
mprintf('Lowest Blind Speed is %g m/s',Vb);
