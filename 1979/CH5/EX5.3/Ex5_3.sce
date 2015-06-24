//chapter-5 page 175 example 5.3
//==============================================================================
clc;
clear;

//For a circular resonator 
D=12.5;//diameter in cm
l=5;//length of circular waveguide in cm
disp('Given the mode of operator is TM012 so here n=0,m=1,p=2');
c=3*10^10;//Velocity of light in cm/sec
m=1;
n=0;
p=2;
Pnm=2.405;//dominant mode value[TM01]

//CALCULATION
a=D/2;//radius in cm
f0=((c/(2*(%pi)))*sqrt((Pnm/a)^2+((p*(%pi))/l)^2))/10^9;//The resonant frequency of a circular resonator in GHz

//OUTPUT
mprintf('\nThe resonant frequency of a circular resonator is f0=%1.2f GHz',f0);

//=========================END OF PROGRAM===============================

