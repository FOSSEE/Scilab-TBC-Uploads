//Chapter-1, Example 1.17, Page 1.43
//=============================================================================
clc
clear

//INPUT DATA
P=4;//Number of poles
Z=726;//Number of conductors 
A=2;//Number of parallel paths
q=(30*10^-3);//Flux per pole in Wb
Ia=45;//Total armature current in A

//CALCULATIONS
Ta=(0.159*Z*q*Ia*P)/A;//Armature toque in N.m

//OUTPUT
mprintf('Armature torque is %3.2f N.m',Ta)

//=================================END OF PROGRAM==============================
