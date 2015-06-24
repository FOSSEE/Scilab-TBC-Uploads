//==========================================================================
// chapter 9 example 4
clc
clear

// Variable declaration
Lf  = 42.3;         // guage length after strain mm
Lo  = 40;           // guage length in mm

// Calculations
e   = ((Lf - Lo)/Lo)*100      // Engineering Strain in percent

// Result
mprintf('Percentage of elongation = %3.2f percent',e);

//===========================================================================
