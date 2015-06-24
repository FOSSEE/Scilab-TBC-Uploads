//==============================================================================
// chapter 6 example 15

clc;
clear;


//input data
 n        = 12;                   //number of plates
 er       = 4;                   //relative permitivty 
 d        = 1.0*10^-3;          //distance between plates in m
 A       = 120*150*10^-6;       //area in m^2
 e0      = 8.854*10^-12;       // in F/m

//calculation
 c      = (n-1)*e0*er*A/d;         //capacitance in F
 
//result
mprintf('capacitance=%3.4e.F\n',c);

//==============================================================================
