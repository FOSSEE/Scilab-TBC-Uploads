//Chapter-1, Example 1.8, Page 1.19
//=============================================================================
clc
clear

//NPUT DATA
n=200;//Number of turns
P=6;//Number of poles
A=P;//Since lap wound turns
Ra=0.0112;//Armature resistance in ohm
Ia=40;//Armature current in A
N=1000;//Armature speed in rpm
q=0.03;//Flux per pole in Wb

//CALCULATIONS
Z=(n*2);//Total number of conductors
Eg=(q*Z*N*P)/(60*A);//Generated emf in V
IaRa=(Ia*Ra);//Armature drop in VI
V=(Eg-IaRa);//Terminal voltage in V

//OUTPUT
mprintf('Terminal voltage is %3.3f V',V)

//=================================END OF PROGRAM==============================
