//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
N1=1200;//Initial speed in rpm
N2=1500;//Final speed in rpm
Ia1=80;//Initial armature current in A
Ia2=100;//Final armature current in A
V=220;//Terminal voltage in V
Ra=0.05;//Armature resistance in ohm
Rsh1=220;//Initial shunt resistance in ohm

//CALCULATIONS
Rsh2=((N2/N1)*(V-(Ia1*Ra))*Rsh1)/(V-(Ia2*Ra));//New shunt resistance in ohm
Rs=(Rsh2-V);//Field resistance in ohm

//OUTPUT
mprintf('Additional field resistance to be included in the field is %3.2f ohm',Rs)

//=================================END OF PROGRAM==============================
