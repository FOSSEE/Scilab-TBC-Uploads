//Chapter-13, Example 13.5, Page 389
//=============================================================================
clc
clear
//INPUT DATA
a=0.97//common-base DC current gain
b=200;//common-emitter DC current gain
//CALCULATIONS
b1=a/(1-a);//common-emitter DC current gain when a=0.97
a1=b/(b+1);//common-base DC current gain when b=200
mprintf("Thus common-emitter DC current gain when a=0.97 and common-base DC current gain when b=200 are %2.2f and %1.3f respectively ",b1,a1)
//=================================END OF PROGRAM=======================================================================================================
