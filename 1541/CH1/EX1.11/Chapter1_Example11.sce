//Chapter-1, Example 1.11, Page 1.33
//=============================================================================
clc
clear


//INPUT DATA
IL=15;//Load current in A
V=220;//Terminal voltage in V
Rsh=180;//Field resistance in ohm
Ra=0.03;//Armature resistance in ohm

//CALCULATIONS
Ish=(V/Rsh);//Field current in A
Ia=(IL-Ish);//Armature current in A
Eb=(V-(Ia*Ra));//Back emf in V
Pm=(Eb*Ia)/1000;//Total mechanical power in kW

//OUTPUT
mprintf('i)Back emf is %3.2f V \nii)Total mechanical power developed in the armature is %3.2f kW',Eb,Pm)

//=================================END OF PROGRAM==============================
