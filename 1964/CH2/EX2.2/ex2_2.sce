//Chapter-2, Example 2.2, Page 90
//=============================================================================
clc;
clear;
//INPUT DATA
phi=5*10^-2;//flux in wb
a=0.2;//area of cross-section in m^2
lg=1.2*10^-2;//length of air gap in m
ur=1;//permeability
u=ur*4*%pi*10^-7;//permeability
//CALCULATIONS 
B=(phi/a);//flux density in wb/sq.m
H=(B/(4*%pi*10^-7*ur));//magnetic flux density in A/m
S=lg/(a*u);//reluctance of air gap in A/wb
permeance=1/S;//permenace in A/wb
mmf_in_airgap=phi*S;//mmf in A
//OUTPUT
mprintf("Thus B,H,S,permeance,MMF in air gap  are %1.2f Wb/sq.m, %g A/m ,%f A/wb ,%g Wb/A ,%d A  respectively ",B,H,S,permeance,mmf_in_airgap);
 //=================================END OF PROGRAM==============================


