//Chapter-1, Example 1.44, Page 51
//=============================================================================
clc;
clear;
//INPUT DATA
V=200;//supply voltage in volts
I=25;//total current in A
P1=1500;//power dissipated in watts
//CALCULATIONS 
R1=(V)^2/(P1);//Resistance R1 in Ohms
Reff=(V)/(I);//total effective resitance of R1 and R2 in parallel in Ohms
R2=(Reff*R1)/(R1-Reff);//Resitance R2 in Ohms
//OUTPUT
mprintf("R1=%2.3f ohms \n R2= %2.3f ohms",R1,R2);
 //=================================END OF PROGRAM==============================
