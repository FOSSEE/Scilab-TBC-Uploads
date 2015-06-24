//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=250;//Terminal voltage in V dc
N1=800;//Existing speed in rpm
Ra=0.05;//Armature resistance in ohm
Ia1=40;//Existing armature current in A
R=0.1;//Reduction in field flux

//CALCULATIONS
Ia2=(Ia1/(1-R));//New armature current in A
N2=(N1*(V-(Ia1*Ra)))/((V-(Ia2*Ra))*(1-R));//New speed in rpm

//OUTPUT
mprintf('New speed is %3.0f rpm',N2)

//=================================END OF PROGRAM==============================
