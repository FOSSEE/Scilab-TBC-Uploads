//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
N1=1000;//Initial speed in rpm
N2=600;//Final speed in rpm
Ia1=40;//Initial armature current in A
Ia2=30;//Final armature current in A
V=250;//Terminal voltage in V
Ra=0.5;//Armature resistance in ohm

//CALCULATIONS
R=(V-((N2/N1)*(V-(Ia1*Ra))))/30;//Total resistance in ohm
Rs=(R-Ra);//Series resistance in ohm

//OUTPUT
mprintf('Resistance required in series is %3.2f ohm',Rs)

//=================================END OF PROGRAM==============================
