//Chapter-5, Example 5.34, Page 197
//=============================================================================
clc
clear
//INPUT DATA
R=20;//resistance in ohms
L=0.2;//inductance in H
C=100;//capacitance in uF 
//resistance will be non-inductive only at reosnant frequency
//CALCULATIONS
fr=(1/(2*%pi*(sqrt(L*C*10^-6))))*(sqrt((L-(C*10^-6*(R)^2))/(L)));//resonant frequency in hz
mprintf("Thus resonant frequency is %2.2f hz\n",fr);
Rf=(L)/(C*R*10^-6);//non-inductive resistance
mprintf("Thus value of non-inductive resistance is %d ohms",Rf);
//=================================END OF PROGRAM======================================================================================================
