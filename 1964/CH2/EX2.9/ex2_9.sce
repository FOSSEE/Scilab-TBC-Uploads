//Chapter-2, Example 2.9, Page 95
//=============================================================================
clc;
clear;
//INPUT DATA
lg=10^-3;//length of air gap in m
B=0.9;//flux density in wb/m^2
li=0.3;//length of ironpath in m
Hi=800;//magnetic flux density in AT/m
u0=4*%pi*10^-7;//permeabilty in free space
//CALCULATIONS 
//for iron path
MMF_required1=Hi*li;//magnetic motive force in AT
//for air gap
MMF_required2=(B/u0)*lg;//magnetic motive force in AT
Totalmmf=MMF_required1+MMF_required2
//OUTPUT
mprintf("Thus total MMF required is %d AT",Totalmmf);
 //=================================END OF PROGRAM==============================
