//chapter-5 page 175 example 5.4
//==============================================================================
clc;
clear;

//For a circular resonator 
a=3;//radius in cm
b=2;//dimension in cm
l=4;//length of circular waveguide in cm
disp('Given the mode of operator is TE101 so here m=1,n=0,p=1');
c=3*10^10;//Velocity of light in cm/sec
m=1;
n=0;
p=1;

//CALCULATION
f0=((c/2)*sqrt((m/a)^2+(n/b)^2+(p/l)^2))/10^9;//The resonant frequency of a circular resonator in GHz

//OUTPUT
mprintf('\nThe resonant frequency of a circular resonator is f0=%1.2f GHz',f0);

//=========================END OF PROGRAM===============================

