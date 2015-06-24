//Chapter-12, Example 12.19, Page 367
//=============================================================================
clc
clear
//INPUT DATA
Rh=200;//Hall-coefficient in cubiccentimeter/C
a=10;//conductivity in s/m
//CALCULATIONS
un=a*Rh;//electron mobility in cm^2/V-s
mprintf("electron mobility is %d cm^2/V-s",un)
//note:answer given is wrong in textbook
//=================================END OF PROGRAM=======================================================================================================
