//=========================================================================
//chapter 7 example 11

clc;
clear;


//input data
 VGS       = -3;               //pinch off voltage in V
 IDSS        =10*10^-3;                // current in A
 Vp         = -5.0;             //pinch off voltage in V
 

//calculation
IDS   = IDSS*((1-(VGS/Vp))^2);


//result
 mprintf('current =%3.2f.A\n',IDS/10^-3);

//==========================================================================
