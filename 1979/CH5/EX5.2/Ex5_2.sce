//chapter-5 page 174 example 5.2
//==============================================================================
clc;
clear;

//For a rectangular cavity resonator 
a=2;//breadth in cm
b=1;//height in cm
l=3;//length of rectangular waveguide in cm
disp('Lowest resonant frequency is obtained for the dominant mode TE10[f=c/w where w increases as f decreases. In dominant mode wc is maximum]');
disp('So the dominant mode is TE101 so here m=1,n=0,p=1');
c=3*10^10;//Velocity of light in cm/sec
m=1;
n=0;
p=1;

//CALCULATION
f0=((c/2)*sqrt((m/a)^2+(n/b)^2+(p/l)^2))/10^9;//The resonant frequency of a rectangular cavity resonator in GHz

//OUTPUT
mprintf('\nThe resonant frequency of a rectangular cavity resonator is f0=%1.0f GHz',f0);

//=========================END OF PROGRAM===============================

