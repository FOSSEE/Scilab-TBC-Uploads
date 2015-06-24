//Chapter-11 example 4
//=============================================================================
clc;
clear;
PW  = 1.5*10^-6;//pulse width in sec
PRF = 2000//per second

//Calculations
Dc = PW*PRF;//duty cycle

//Output
mprintf('Duty Cycle is %e',Dc); 
//==========end of program===================================================== 
