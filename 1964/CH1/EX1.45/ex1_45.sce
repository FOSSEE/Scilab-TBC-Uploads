//Chapter-1, Example 1.45, Page 52
//=============================================================================
clc;
clear;
//INPUT DATA
V=15;//supply voltage in volts
VAB=5;//voltage across AB in volts
R1=5;//resitance in ohms
R2=10;//resitance in ohms
R3=10;//resitance in ohms
//CALCULATIONS 
VAC=((R1)/(R1+R3))*V;//Volatge across AC terminals in Volts
//VBC=(((R)/(R+2))*V)--------------eqn(1) by ohm's law
//VAB=(VAC-((VBC)*(R2-(((R1+R2)*R)/(R+2)))---------------eqn(2) by ohm's law
//solving equation 2 with Vab=5V
R=10/10;//resistance R in ohms
//OUTPUT
mprintf("R=%d ohms",R);
 //=================================END OF PROGRAM==============================
