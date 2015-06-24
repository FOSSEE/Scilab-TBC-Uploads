//Chapter-5, Example 5.15, Page 171
//=============================================================================
clc
clear
//INPUT DATA
R=50;//resistance in ohms
L=9;//inductance in Henry
I0=1;//current in A
f=75;//ferquency in Hz
//at resonance Xl=Xc 
//CALCULATIONS
Xl=2*%pi*f*L;//inductive reactance
Xc=Xl;//capacitive reactance
C=1/(2*%pi*f*Xc);//capacitance in uf
mprintf("Thus capacitance is %g F",C);
//=================================END OF PROGRAM======================================================================================================

;
