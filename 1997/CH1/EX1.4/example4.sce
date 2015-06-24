//Chapter-1, Example 1.4, Page 35
//=============================================================================
clc;
clear;

//INPUT DATA
PRF   = 1000;//pulse repetitive frequency in Hz
Ppeak =10*10^6;//peak power in watts
Pav   =100*10^3;//average power in watts

//Calculations

D     = Pav/Ppeak;//Duty cycle
PRT   = 1/PRF;//pulse repetitive time;

//Output
mprintf('Duty cycle is %g\n pulse repetitive time is %g ms',D,PRT*1000);
