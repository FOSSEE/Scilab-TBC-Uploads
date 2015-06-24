//Chapter-5, Example 5.47, Page 210
//=============================================================================
clc
clear
//INPUT DATA
P1=6*10^3;//power in Kw
P2=-1*10^3;//power in Kw
//CALCULATIONS
P=P1+P2;//total power in Kw
a=atan(sqrt(3)*((P2-P1)/(P2+P1)));
pf=cos(a);//power factor
mprintf("Thus power and power factor are %d W and %1.2f respectively",P,pf);
//=================================END OF PROGRAM======================================================================================================
