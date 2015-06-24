//Chapter-12, Example 12.20, Page 367
//=============================================================================
clc
clear
//INPUT DATA
a=10;//conductivity in s/m
un=50*10^-4;//electron mobility in m^2/V-s
q=1.6*10^-19;//charge in coulombs
//CALCULATIONS
n=(a/(un*q));//electron concentration in m^-3
mprintf("electron concentration is %g m^-3 ",n)
//=================================END OF PROGRAM=======================================================================================================
