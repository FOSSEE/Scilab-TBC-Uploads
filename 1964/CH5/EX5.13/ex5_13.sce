//Chapter-5, Example 5.13, Page 170
//=============================================================================
clc
clear
//INPUT DATA
C=0.05;//capacitance in uf
F=500;//freq in hz
//CALCULATIONS
Xl=1/(2*%pi*F*C*10^-6);//capacitive reactance in ohms
//at resonance Xl=Xc 
L=(Xl/(2*%pi*F));//inductance in H
mprintf("Thus value of L is %1.2f H",L);
//=================================END OF PROGRAM======================================================================================================

;
