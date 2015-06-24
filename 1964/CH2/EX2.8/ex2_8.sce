//Chapter-2, Example 2.8, Page 95
//=============================================================================
clc;
clear;
//INPUT DATA
l=0.3;//length in m
d=1.5*10^-2;//diameter in m
N=900;//no of turns
ur=1;//relative permeability in free space
u0=4*%pi*10^-7;//permeability in free space
I=5;//current in A
//CALCULATIONS 
a=(%pi*(d)^2/4);//in m^2
S=(l)/(a*ur*u0);//reluctance
//OUTPUT
mprintf("Thus reluctance is %f A/wb",S);
 //=================================END OF PROGRAM==============================
