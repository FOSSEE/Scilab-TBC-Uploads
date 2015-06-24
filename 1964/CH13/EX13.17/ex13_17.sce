//Chapter-13, Example 13.17, Page 391
//=============================================================================
clc
clear
//INPUT DATA
b=49;//common-emitter DC current gain
Ie=3*10^-3;//emitter current in A
//CALCULATIONS
a=b/(1+b);//common-base DC current gain
Ic=a*Ie;//collector current in A
mprintf("Thus common-base DC current gain and ccollector current are %1.2f and %g A respectively",a,Ic);
//=================================END OF PROGRAM=======================================================================================================
