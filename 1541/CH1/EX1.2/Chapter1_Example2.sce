//Chapter-1, Example 1.2, Page 1.15
//=============================================================================
clc
clear

//INPUT DATA
Il=40;//Load current in A
V=400;//Terminal voltage in V
Ra=0.04;//Armature resistance in ohm
Rse=0.02;//Series field resistance in ohm
Rsh=300;//Shunt field resistance in ohm
V1=2;//Voltage drop across the brushes in V

//CALCULATIONS
 Ia=Il+(V/Rsh);//Armature current in A
 Eg=V+(Ia*Ra)+(Ia*Rse)+V1;//Generated emf in V
 
//OUTPUT
mprintf('Induced emf is %3.3f V \n Armature current is %3.2f A',Eg,Ia)

//=================================END OF PROGRAM==============================
