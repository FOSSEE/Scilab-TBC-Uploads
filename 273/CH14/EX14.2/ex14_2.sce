clc;clear;
//Example 14.2
//calculation of intensity of laser beam

//given values
P=1*10^-3;//Power in Watt
l=6328*10^-10;//wavelength in m
A=l^2;//area in m^2


//calculation
I=P/A;
disp(I,'intensity (in W/m^2) is');