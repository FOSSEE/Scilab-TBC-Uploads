//Chapter-2, Example 2.7, Page 95
//=============================================================================
clc;
clear;
//INPUT DATA
Dm=0.1//diameter in m
a=10^-3;//area of cross-section im m^2
N=150;//no of turns
ur=800;//permeability of iron ring
B=0.1;//in Wb/m^2
u0=4*%pi*10^-7;//permeability of free space
//CALCULATIONS 
S=(%pi*Dm)/(a*ur*u0);//reluctance
I=(B*a*S)/(N);//current in A
//OUTPUT
mprintf("Thus current is %f A",I);
 //=================================END OF PROGRAM==============================
