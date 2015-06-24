//Chapter-1, Example 1.5, Page 1.17
//=============================================================================
clc
clear

//INPUT DATA
n=48;//Number of slots
z=16;//Number of conductors per slot
q=0.018;//Flux per pole in Wb
P=4;//Number of poles
N=1000;//Speed of armature in rpm
A=2;//Number of parallel paths 

//CALCULATIONS
Z=(n*z);//Number of conductors
Eg=(q*Z*N*P)/(60*A);//Generated emf in V

//OUTPUT
mprintf('Generated emf is %3.1f V',Eg)

//=================================END OF PROGRAM==============================
