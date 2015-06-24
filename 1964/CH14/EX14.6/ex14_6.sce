//Chapter-14, Example 14.6, Page 466
//=============================================================================
clc
clear
//INPUT DATA
Rf=10*10^3;//forward resistance in ohms
R1=1*10^3;//resistance in ohms
//CALCULATIONS
Af=1+(Rf/R1);//closed-loop voltage gain in non-inverting amplifier
b=(R1/(R1+Rf));//feedback factor
mprintf("Thus closed-loop voltage gain and feedback factor are %d and %1.3f respectively",Af,b);
//=================================END OF PROGRAM=======================================================================================================
