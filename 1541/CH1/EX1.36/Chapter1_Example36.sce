//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=200;//Terminal voltage in V
Ra=0.05;//Armature resistance in ohm
Rse=0.03;//Field resistance in ohm
N1=1000;//Present speed in rpm
N2=800;//Required speed in rpm
Ia=40;//Armature current in A

//CALCULATIONS
R=(V-((N2/N1)*(V-(Ia*(Ra+Rse)))))/Ia;//Total resistance in ohm
R1=(R-Ra-Rse);//Series resistance required to be connected in series with armature and field resistance in ohm

//OUTPUT
mprintf('Series resistance required to be connected in series with armature and field resistance is %3.3f ohm',R1)

//=================================END OF PROGRAM==============================
