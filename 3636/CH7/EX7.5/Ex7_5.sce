clc;
clear;
xGe=4.13  //in eV
xGaAs=4.07 //in eV
Eg_Ge=0.7 //in eV
Eg_GaAs=1.45 //in eV

//Calculation
delE_c=xGe-xGaAs
delE_v=(Eg_GaAs-Eg_Ge)-delE_c

mprintf("Conduction band= %1.2f eV\n",delE_c)
mprintf("Valence band= %1.2f eV",delE_v)
