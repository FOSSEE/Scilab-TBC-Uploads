//Chapter-13, Example 13.16, Page 391
//=============================================================================
clc
clear
//INPUT DATA
deltaIe=1*10^-3;//change in emitter current in A
deltaIc=0.995*10^-3;//change in collector current in A
//CALCULATIONS
a=deltaIc/deltaIe;//common-base DC current gain
b=a/(1-a);//common-emitter DC current gain
mprintf("Thus common-base DC current gain and common-emitter DC current gain are %1.3f and %1.0f respectively",a,b);
//=================================END OF PROGRAM=======================================================================================================
