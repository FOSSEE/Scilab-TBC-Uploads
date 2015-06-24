//Chapter-1, Example 1.4, Page 20
//=============================================================================
clc;
clear;
//INPUT DATA
l=10000;//length drawn from 10cc of copper in cm
p=1.7*10^-6;//Resistivity of copper in ohm cm
v=10;//volume of copper in cc
s1=10;//square sheet side in second case in cm
//CALCULATIONS
a=v/l;//area of cross-section in cm^2 in first case
R1=p*l/a;//resistance of wire in first case in ohm
a1=s1*s1;//area of cross-section in cm^2 in second case
l1=v/a1;//thickness in case 2 in cm
R2=p*l1/a1;//resistance of wire in second case in ohm
//OUTPUT
mprintf("Thus the resistance in first and second cases are %g ohms and %g ohms\n",R1,R2);

//=================================END OF PROGRAM==============================
