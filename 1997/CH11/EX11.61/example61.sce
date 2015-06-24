//Chapter-11 example 60
//=============================================================================
clc;
clear;
//Given data
PRF1        = 10*10^3;          //pulse repetitive freq.1 
PRF2        = 20*10^3;          //pulse repetitive freq.2
Pav         = 1000;             // average tx. power
Pt          = 10*10^3;          // peak power

//Calculations
PRT1        = 1/PRF1;           // pulse repetitive interval in sec
PRT2        = 1/PRF2;           // pulse repetitive interval in sec
DC          = Pav/Pt;           // duty cycle
PW1         = DC*PRT1          // pulse width for freq1
PW2         = DC*PRT2          // pulse width for freq2
E1          = Pt*PW1;           // energy of first pulse
E2          = Pt*PW2;           // energy of second pulse

//output
mprintf('PW1 = %3.2f ms\n PW2 = %3.3f ms\n Pulse Energy for PRF = 10KHz is %3.1f Joules\n Pulse Energy for PRF = 20KHz is %3.2f Joules\n',PW1*1000,PW2*1000,E1,E2 );
//==============================================================================









