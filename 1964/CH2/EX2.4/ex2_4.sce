//Chapter-2, Example 2.4, Page 91
//=============================================================================
clc;
clear;
//INPUT DATA
li=0.5;//iron path length in m
lg=10^-3;//length of air gap in m
phi=0.9*10^-3;//flux in wb
a=6.66*10^-4;//area of cross-section of iron in m^2
N=400;//no of turns 
//CALCULATIONS 
B=(phi/a);//flux density in wb/sq.m
Hg=(B/(4*%pi*10^-7));//magnetic flux density in A/m
AT_required=Hg*lg;//AT required for air path
Hi=1000;//magnetic flux density in A/m
AT_required_for_iron_pat=Hi*li;
total_AT_required=(Hg*lg)+(Hi*li);
I=((Hg*lg)+(Hi*li))/(N);
//OUTPUT
mprintf("Thus exciting current required is %1.2f A",I);
 //=================================END OF PROGRAM==============================
