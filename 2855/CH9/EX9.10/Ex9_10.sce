//Chapter 9
//page no 305
//given
clc;
clear all;
L=850;          //in nm
L1=L/1000;           //converted L in micrometer for using in given formula
A=0.4;          //in dB/km
d=5;        //in micrometer
Po=5.9*10^-2*A*L1*d^2;
printf(" \n Po(Th) =  %0.0f mW",Po*1000);       //rounding off error
