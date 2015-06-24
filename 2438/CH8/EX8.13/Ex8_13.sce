//=======================================================================================================
// Chapter 8 example 13

clc;
clear;

T        = 300;                  // room temperature in K
psi1       =100;                //
psi2     = 130;



// T+dT = 1/((1/T)-(2k/Eg)log1.3)
// T+dT = 305.9
dT  = 305.9 - 300;


mprintf('Therefore %3.1f K rise in temperature will lead to a rise of 30 percent in conductivity',dT)

//========================================================================================================
