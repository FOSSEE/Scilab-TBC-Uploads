//Chapter-1, Example 1.3, Page 35
//=============================================================================
clc;
clear;

//INPUT DATA
D    = 0.001;//Duty Cycle
Ppeak=500*10^3;//Peak Power in Watts

//Calculations

Pav = D * Ppeak;// D=averagepower/Peakpower;

//Output
mprintf('Average power is %g Watts',Pav);
