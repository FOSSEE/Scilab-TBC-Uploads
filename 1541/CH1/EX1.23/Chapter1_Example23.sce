//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
P=6;//Number of poles
A=6;//Number of parallel paths for lap wound
Z=600;//Number of conductors
IL=100;//Load current in A
V=120;//Terminal voltage in V
Ra=30;//Armature resistance in ohm
Rsh=0.06;//Shunt field resistance in ohm
q=(30*10^-3);//Flux per pole in Wb

//CALCULATIONS
Ish=(V/Ra);//Field current in A
Ia=(IL-Ish);//Armature current in A
Eb=(V-(Ia*Rsh));//Back emf in V
N=(60*Eb*A)/(q*Z*P);//Speed of the motor in rpm

//OUTPUT
mprintf('Speed of the lap wound shunt motor is %3.0f rpm',N)

//=================================END OF PROGRAM==============================
