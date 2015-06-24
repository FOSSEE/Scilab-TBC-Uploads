//chapter-10 page 486 example 10.2
//==============================================================================
clc;
clear;

r=6370*10^3;//radius of the earth in m
x=-0.05*10^(-6);//the gradient of refractive index of air near the ground per m [du/dh]

//CALCULATION
k=1/(1+(r*x));//The value of the factor by which the horizon distance of a transmitter will be modified 

//OUTPUT
mprintf('\nThe value of the factor by which the horizon distance of a transmitter will be modified is k=%1.4f',k);

//=========================END OF PROGRAM===================================

