//Chapter-1, Example 1.3, Page 1.15
//=============================================================================
clc
clear

//INPUT DATA
V=250;//Terminal voltage in V
IL=40;//Load current in A
Ra=0.04;//Armature resistance in ohm
Rse=0.03;//Series field resistance in ohm
Rsh=100;//Shunt field resistance in ohm
Vbr=2;//Voltage drop across brushes in V

//CALCULATIONS
Vsh=(V+(IL*Rse));//Voltage across shunt field in V
Ia=(IL+(Vsh/Rsh));//Armature current in A
Eg=(V+(IL*Rse)+(Ia*Ra)+Vbr);//Generated emf in V

//OUTPUT
mprintf('Induced emf is %3.1f V \nArmature current is %3.3f A',Eg,Ia)

//=================================END OF PROGRAM==============================
