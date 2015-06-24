//Chapter-1, Example 1.28, Page 42
//=============================================================================
clc;
clear;
//INPUT DATA
R1=3.6;//resistance in ohm
R2=4.56;//resistance in ohm
RT=6;//resistance in ohm
//CALCULATIONS 
X=RT-(R2);
R3=(X*R1)/(R1-X);
//OUTPUT
mprintf("Thus the value of third resistance placed is %1.1f ohm ",R3);
 //=================================END OF PROGRAM==============================
