//Chapter-13, Example 13.21, Page 394
//=============================================================================
clc
clear
//INPUT DATA
Icbo=0.2*10^-6;//current in A
Iceo=18*10^-6;//current in A
Ib=30*10^-6;//current in A
//CALCULATIONS
a=1-(Icbo/Iceo);//common-base DC current gain
b=(Iceo/Icbo)-1;//common-emitter DC current gain
Ic=(b*Ib)+((1+b)*(Icbo));//collector current in A
mprintf("Thus common-base DC current gain and common-emitter DC current gain are %1.3f and %d respectively",a,b)
//=================================END OF PROGRAM=======================================================================================================
