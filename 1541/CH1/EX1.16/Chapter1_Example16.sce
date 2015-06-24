//Chapter-1, Example 1.16, Page 1.37
//=============================================================================
clc
clear

//INPUT DATA
P=30000;//Power rating of the dc machine in W
V=300;//Terminal voltage in V
Ra=0.04;//Armature resistance in ohm
Rsh=120;//Shunt field resistance in ohm

//CALCULATIONS
IL=(P/V);//Load current in A
Ia=(IL+(V/Rsh));//Armature current in A
Eg=(V+(Ia*Ra));//Generated emf in V
P=(Eg*Ia);//Power developed in the armature in W
Ish=(V/Rsh);//Field current in A
Ia2=(IL-Ish);//Armature current in motor in A
Eb=(V-(Ia2*Ra));//Back emf in V
P1=(Eb*Ia2);//Power developed in the armature in W

//OUTPUT
mprintf('Total power developed in the armature when \ni)the dc machine is operated as a generator is %3.0f W \nii)when the dc machine is operated as a motor is %3.1f W',P,P1)

//=================================END OF PROGRAM==============================
