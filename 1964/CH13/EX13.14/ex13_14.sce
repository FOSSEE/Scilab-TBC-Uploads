//Chapter-13, Example 13.14, Page 391
//=============================================================================
clc
clear
//INPUT DATA
deltaIe=1*10^-3;//change in emitter current in A
deltaIc=0.99*10^-3;//change in collector current in A
//CALCULATIONS
a=(deltaIc/deltaIe);//current gain of the transistor
mprintf("Thus current gain of the transistor is %1.2f",a);
//=================================END OF PROGRAM=======================================================================================================
