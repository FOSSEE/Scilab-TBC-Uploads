//Chapter-4, Example 4.24, Page 148
//=============================================================================
clc
clear
//CALCULATIONS
//e1=230*sin(100*%pi*t)
C=20*10^-6;//capacitance in F
//e2=230*sin(700*%pi*t)
Vm1=230;//peak voltage for e1
Vm2=35;//peak voltage for e2
I1=Vm1*(100*%pi*C)/(sqrt(2));//current due to component e1
I2=Vm2*(700*%pi*C)/(sqrt(2));//current due to component e2
mprintf("thus current due to component e1 and e2 are %1.2fA and %1.2fA respectively",I1,I2);
//=================================END OF PROGRAM======================================================================================================

