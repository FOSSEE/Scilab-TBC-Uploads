//Chapter-2, Example 2.3, Page 90
//=============================================================================
clc;
clear;
//INPUT DATA
phi=0.1*10^-3;//flux in wb
a=1.7*10^-4;//area of cross-section in m^2
lg=0.5*10^-3;//length of air gap in m
Rm=15/2;//radius of ring in cm
u0=4*%pi*10^-7;//permeability in free space in henry/m
N=1500;//no of turns of ring
//CALCULATIONS 
B=(phi/a);//flux density in wb/sq.m
H=(B/(4*%pi*10^-7));//magnetic flux density in A/m
ampere_turns_provided_fo=H*lg;
total_ampere_turns_provi=N*1;
Available_for_iron_path=N-(H*lg);
length_of_iron_path=(2*Rm*%pi*10^-2)-(lg);//length of iron path in m
H_for_iron_path=((N-(H*lg)))/(length_of_iron_path);
ur=(B/(u0*H_for_iron_path));//relative permeability of iron
//OUTPUT
mprintf("Thus relative permeability of iron is %d",ur);
 //=================================END OF PROGRAM==============================
