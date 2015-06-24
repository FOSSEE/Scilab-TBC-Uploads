//Chapter-2, Example 2.1, Page 89
//=============================================================================
clc;
clear;
//INPUT DATA
N=2000;//no of turns
I=10;//current in A
Rm=25;//mean radius in cm
d=6;//diameter of each turn in cm
//CALCULATIONS 
MMF=N*I;//magneto motive force in A
l=2*%pi*(Rm/100);//circumference of coli in m
u=(4*%pi*10^-7);//permeability (U=Ur*U0)
a=(%pi*d*d*10^-4)/4;
reluctance=(l/(a*u));//reluctance in At/Wb
flux=(MMF)/(reluctance);//flux in Wb
fluxdensity=(flux/a);//flux density in Wb/m^2 or tesla
//OUTPUT
mprintf("Thus MMF,flux,flux density  are %d A, %g Wb ,%g Wb/m^2 or Tesla respectively ",MMF,flux,fluxdensity);
 //=================================END OF PROGRAM==============================


