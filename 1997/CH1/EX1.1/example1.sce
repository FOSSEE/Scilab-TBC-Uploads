//Chapter-1, Example 1.1, Page 34
//=============================================================================
clc;
clear;

//INPUT DATA
PRF= 1000;//pulse repetitive frequency in Hz
PW = 2*10^-6;//pulse width 2us
Pav=100;//average power in watts

//Calculations

Ppeak = (Pav)/(PW*PRF);//Peak power in watts
D     = Pav/Ppeak;//Duty cycle

//Output
mprintf('Peak power is %g KW\n Duty cycle is %e',Ppeak/1000,D);
