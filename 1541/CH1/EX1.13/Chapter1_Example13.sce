//Chapter-1, Example 1.13, Page 1.34
//=============================================================================
clc
clear

//INPUT DATA
P=4;//Number of poles
V=500;//Terminal voltage in V
Ia=80;//Armature current in A
Ra=0.4;//Armature resistance in ohm
A=2;//Number of parallel paths
Z=522;//Number of conductors
q=0.025;//Useful flux per pole in Wb

//CALCULATIONS
Eb=(V-(Ia*Ra));//Back emf in V
N=(Eb*60*A)/(P*q*Z);//Speed of the motor in rpm

//OUTPUT
mprintf('Speed of the motor is %3.1f rpm',N)

//=================================END OF PROGRAM==============================
