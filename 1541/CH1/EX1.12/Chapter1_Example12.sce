//Chapter-1, Example 1.12, Page 1.34
//=============================================================================
clc
clear

//INPUT DATA
V=220;//Terminal voltage in V
IaFL=25;//Full load armature current in A
IaNL=5;//No load armature current in A
Ra=0.5;//Armature resistance in ohm

//CALCULATIONS
EbNL=(V-(IaNL*Ra));//Back emf at no load in V
Eb=(V-(IaFL*Ra));//Back emf at full load in V
E=(EbNL-Eb);//Change in back emf from no load to full load in V

//OUTPUT
mprintf('Change in back emf from no load to full load is %3.0f V',E)

//=================================END OF PROGRAM==============================
