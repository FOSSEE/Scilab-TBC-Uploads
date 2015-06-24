//==========================================================================
// chapter 5 example 21

clc;
clear;

//input data 
 a1   = 2.76;               //a1 in uv/°C
 a2  =16.6;              //a2 in uv/°C
 b1  = 0.012;              //b1 in uv/°C
 b2  = -0.03;              //b2 in uv/°C

//calculation
//aFe,Pb   =a1 
//aCu,Pb   = a2
//bCu,Fe   = b1
//bFe,Pb   = b2

//calculation
 a3    = a1-a2;              //a3 in uv/°C
 b3    = b1-b2;              //b3 in uv/(°C)^2

//result
 mprintf('aCu,Fe =%3.2f.uV/°C\n',a3);
 mprintf(' bCu,Fe =%3.3f.uV/(°C)^2\n',b3);

//============================================================================
