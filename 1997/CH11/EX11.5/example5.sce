//Chapter-11 example 5
//=============================================================================
clc;
clear;
PW  =  2*10^-6//pulse width in sec
PRF =  1000//pulse repetitive frequency 
Pp  = 1*10^6;//peak power in watts

//Calculations
Dc  =  PW*PRF;//duty cycle
AvgTp = Pp*Dc;//average transmitted power in watts

//Output
mprintf('Average Transmitted power is %g KW',AvgTp/1000);

//==========end of program===================================================== 


