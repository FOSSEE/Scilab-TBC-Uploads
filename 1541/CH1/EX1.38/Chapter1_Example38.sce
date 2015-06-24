//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=200;//Terminal voltage in V dc
I1=25;//Line current in A
Ra=0.5;//Armature resistance in ohm
Rse=0.3;//Field resistance in ohm

//CALCULATIONS
//N2=0.75*N1
I2=sqrt((I1^2*(0.75)^3));//New line current in A
Eb1=(V-(I1*(Ra+Rse)));//Back emf in V
X=(V*I2);//X value for Resistance
R=(X-(0.75*Eb1))/I2^2;//Total resistance in ohm
Rs=(R-Ra-Rse);//Resistance to be connected in ohm

//OUTPUT
mprintf('Resistance to be connected is %3.1f ohm',Rs)

//=================================END OF PROGRAM==============================
