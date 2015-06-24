//Chapter-5, Example 5.26, Page 186
//=============================================================================
clc
clear
//INPUT DATA
Z1=10+(%i*15);//impedance in ohms
Z2=6-(%i*8);//impedance in ohms
I=15;//current in A
//CALCULATIONS
I1=((Z2)/(Z1+Z2))*(I);//using current division rule
I2=((Z1)/(Z1+Z2))*(I);//using current division rule
i1=abs(I1);//magnitude of current 1
i2=abs(I2);//magnitdude of current 2
P1=((i1)^2)*(Z1(1));//power consumed by branch 1
P2=((i2)^2)*(Z2(1));//power consumed by branch 2
mprintf("Thus power consumed by branches 1 and 2 are %3.2f W and %4.1f W respectively",P1,P2);
//=================================END OF PROGRAM======================================================================================================
