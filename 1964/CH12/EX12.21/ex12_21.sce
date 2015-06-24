//Chapter-12, Example 12.21, Page 368
//=============================================================================
clc
clear
//INPUT DATA
I=20;//current in A
B=1.2//magnetic flux density in Wb/m^2
Vh=60;//hall voltage in V
w=0.5;//thickness of strip in mm
q=1.6*10^-19;//charge in coulombs
//CALCULATIONS
n=(B*I)/(Vh*q*w*10^-3);//electron concentration in m^-3
mprintf("electron density is %g m^3 ",n)
//=================================END OF PROGRAM=======================================================================================================
