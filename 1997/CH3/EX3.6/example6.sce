//Chapter-3, Problem 3.6 , Page106
//===========================================================================
clc;
clear;

//INPUT DATA
lamda = 3*10^-2;//wavelength in m
PRF   = 1000;  //pulse repetitive frequency in Hz
Vo    = 3*10^8;// velocity in m/s

//Calculations

Ruamb = (Vo)/(2*PRF);//max unambiguous range in m
//Output
mprintf('Maximum unambiguous range is %g Kms',Ruamb/1000);
