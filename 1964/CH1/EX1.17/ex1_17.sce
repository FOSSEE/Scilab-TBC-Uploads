//Chapter-1, Example 1.17, Page 27
//=============================================================================
clc;
clear;
//INPUT DATA
R1=0.031;//resistance of wire in ohm
d1=11.7;//diameter of wire in mm in case 1
r1=d1/2;//radius of wire in mm in case 1
d2=5;//diameter of wire in mm in case 2
r2=d2/2;//radius of wire in mm in case 2
// we know that resistance is inversely proportional to square of area of cross-section
//CALCULATIONS 
R2=R1*(((%pi*r1*r1)/(%pi*r2*r2)))^2;//resistance of wire in case 2
//OUTPUT
mprintf("Thus the new resistance of wire is %1.4f ohms",R2);
 

//=================================END OF PROGRAM==============================
