//=========================================================================
// chapter 9 example 5

clc;
clear;

// Variable declaration

dr  = 12.8      // original diameter of steel wire in mm
df  = 10.7;     // diameter at fracture in mm

// Calculations

percent_red = (((%pi*dr*dr) - (%pi*df*df))/(%pi*dr*dr))*100;


// Result

mprintf('Percent reduction in area = %3.2f percent',percent_red);

//========================================================================
