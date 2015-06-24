//chapter-5 page 174 example 5.1
//==============================================================================
clc;
clear;

//For a circular waveguide 
a=3;//radius in cm
f0=10*10^9;//resonant frequency of a circular resonator in Hz
disp('Given the mode of operator is TM011 so here n=0,m=1,p=1');
c=3*10^10;//Velocity of light in cm/sec
m=1;
n=0;
p=1;
Pnm=2.405;//dominant mode value[TM01]

//CALCULATION
d=((p*(%pi))/(sqrt((2*(%pi)*f0/c)^2-(Pnm/a)^2)));//The minimum distance between the two end plates in cms

//OUTPUT
mprintf('\nThe minimum distance between the two end plates of a circular waveguide is d=%1.2f cms',d);

//=========================END OF PROGRAM===============================

