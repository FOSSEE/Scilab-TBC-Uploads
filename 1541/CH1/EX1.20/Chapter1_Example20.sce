//Chapter-1, Example 1.20, Page 1.46
//=============================================================================
clc
clear


//INPUT DATA
IL=50;//Load current in A
V=220;//Terminal voltage in V
Ra=0.3;//Armature resistance in ohm
Rsh=220;//Field resistance in ohm
N=1200;//Speed of the motor in rpm

//CALCULATIONS
Ish=(V/Rsh);//Field current in A
Ia=(IL-Ish);//Armature current in A
Eb=(V-(Ia*Ra));//Back emf in V
Ta=(9.55*Eb*Ia)/N;//Armature torque in N.m

//OUTPUT
mprintf('Armature torque is %3.0f N.m',Ta)

//=================================END OF PROGRAM==============================
