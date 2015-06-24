//Chapter-14, Example 14.5, Page 465
//=============================================================================
clc
clear
//INPUT DATA
Rf=10*10^3;//feedback resistance in ohms
R1=1*10^3;//resistance in ohms
//CALCULATIONS
Af=-(Rf/R1);//closed-loop voltage gain for inverting amplifier
mprintf("Thus closed-loop voltage gain is %d",Af);
//=================================END OF PROGRAM=======================================================================================================
