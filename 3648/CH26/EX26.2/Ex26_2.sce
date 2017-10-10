//Example 26_2
clc();
clear;
//To find the wavelength of fourth line in Paschen series
n1=3   //Units in constant
n2=7   //Units in constant
r=1.0974*10^7       //units in meter^-1
lamda=round((1/r)*((n1^2*n2^2)/(n2^2-n1^2))*10^9)     //Units in nm
printf("The wavelength of fourth line in Paschen series is=%d nm",lamda)
