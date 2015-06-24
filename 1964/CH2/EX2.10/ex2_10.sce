//Chapter-2, Example 2.10, Page 96
//=============================================================================
clc;
clear;
//INPUT DATA
li=0.5;//length of iron ring mean length in m
N=220;//no of turns
I=1.2;//current in A
lg=1.2*10^-3;//length of airgap in m
ur=350;//relative permeability of iron
u0=4*%pi*10^-7;//permeability in free space
//CALCULATIONS 
MMF_produced=N*I;
Si=li/(u0*ur);//reluctance of iron path
Sg=lg/(u0);//reluctance of air gap
S=Si+Sg;//total reluctance 
Flux_density=(MMF_produced)/(S);
//OUTPUT
mprintf("Thus fluxdensity is %1.3f Wb/m^2",Flux_density);
 //=================================END OF PROGRAM==============================
