//Chapter-13, Example 13.15, Page 391
//=============================================================================
clc
clear
//INPUT DATA
b=100;//common-emitter DC current gain
//CALCULATIONS
a=(b/(1+b));//common-base DC current gain
mprintf("Thus common-base DC current gain is %1.2f",a);
//=================================END OF PROGRAM=======================================================================================================
