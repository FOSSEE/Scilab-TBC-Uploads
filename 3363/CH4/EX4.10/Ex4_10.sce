//Example  4.10, Page 125
clc
//For Hydrogen atom
R_o=109737//in cm
m=1
M=1836
RH=(R_o)/(1+(m/M))
printf("\n Spectrum line for Hydrogen occur at %f /cm ",RH)
//For Deuterium atom
R_o=109737//in cm
m=1
M=2*1836
RD=(R_o)/(1+(m/M))
printf("\n Spectrum line for Deuterium occur at %f /cm ",RD)