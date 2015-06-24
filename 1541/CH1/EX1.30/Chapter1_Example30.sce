//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=300;//Terminal voltage in V
N1=600;//Existing speed in rpm
IL=30;//Load current in A
N2=800;//New speed in rpm
Ra=0.5;//Armature resistance in ohm
Rsh=125;//Field resistance in ohm

//CALCULATIONS
Ish1=(V/Rsh);//Field current in A
Ia1=(IL-Ish1);//Armature current in A
Ia2=(V-sqrt((V^2)-(4*Ra*(V-(Ia1*Ra))*Ia1*(N2/N1))));//New armature current in A
Ish2=(Ish1*Ia1)/Ia2;//New field current in A
Rsh2=(V/Ish2);//New field resistance in ohm
FR=(Rsh2-Rsh);//Field rheostat in ohm

//OUTPUT
mprintf('The value of resistance to be included in the field is %3.2f ohm',FR)

//=================================END OF PROGRAM==============================
