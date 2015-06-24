//Chapter-5, Example 5.32, Page 196
//=============================================================================
clc
clear
//INPUT DATA
V=220;//applied voltage in volts
f=50;//frequency in hz
Imax=0.4;//maximum current in A
Vc=330;//voltage across capacitance in volts
//at resonance condition I0=0.4 A
I0=0.4//current in A
//CALCULATIONS
Xc=(Vc)/(I0);//capacitive reactance in ohms
C=inv(2*%pi*f*Xc);//capacitance in F
//at resonance condition Xc=Xl, hence
L=Xc/(2*%pi*f);//inductance in henry
R=V/(Imax);//resistance in ohms
mprintf("Thus resistance,inductance and capacitance are %d ohms,%1.2f H and %g F respectively\n",R,L,C);
//=================================END OF PROGRAM======================================================================================================
