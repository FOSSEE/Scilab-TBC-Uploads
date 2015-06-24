//Chapter-11 example 22
//=============================================================================
clc;
clear;
//input data
Ra = 1000;//Range of target A in Kms
//Calculations
Rb =Ra*cos(45*%pi/180);//range of target B in kms

//output
mprintf('Range of target B is %g Kms\n',Rb);
mprintf(' Note:value of cos(45) is incorrectly taken as 1/2 in textbook');

//====================end of the program=======================================
