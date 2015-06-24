//Chapter-11 example 15
//=============================================================================
clc;
clear;
//input data
Te    =  0.2*10^-3;//echo time in sec
PRF   =  1000;//pulse repetitive Frequency in Hz
Vo    =  3*10^8;//Velocity of EM wave in m/s
//Calculations
R     =  (Vo*Te)/2;//Range of the target in m
Runamb  =  (Vo/(2*PRF));//Maximum unambiguous Range in m

//Output
mprintf('Target range is %g Km\n Maximum Unambiguous Range is %g Km',R/1000,Runamb/1000);

//=================end of program==============================================
