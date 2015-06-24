//Chapter-1, Example 1.4, Page 1.16
//=============================================================================
clc
clear

//INPUT DATA
Ed=25000;//Power delivered by the generator in W
V=250;//Terminal voltage in V
Rsh=75;//Shunt field resistance in ohm
Ra=0.03;//Armature resistance in ohm

//CALCULATIONS
IL=(Ed/V);//Load current in A
If=(V/Rsh);//Field current in A
Ia=(IL+If);//Armature current in A
Eg=(V+(Ia*Ra));//Generated emf in V
Pg=(Eg*Ia)/1000;//Generated power in kW

//OUTPUT
mprintf('Total power delivered by the armature is %3.2f kW',Pg)

//=================================END OF PROGRAM==============================
