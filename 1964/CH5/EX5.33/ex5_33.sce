//Chapter-5, Example 5.33, Page 197
//=============================================================================
clc
clear
//INPUT DATA
R1=5;//resistance of branch1 in ohms
R2=2;//resistance of branch2 in ohms
L=10;//inductance in mH
C=40;//capacitance in uF 
//CALCULATIONS
fr=(1/(2*%pi*(sqrt(L*C*10^-9))))*(sqrt(((C*10^-6*(R1)^2)-L*10^-3)/((C*10^-6*(R2)^2)-L*10^-3)));//resonant frequency in hz
mprintf("Thus resonant frequency is %f hz",fr);
//=================================END OF PROGRAM======================================================================================================
