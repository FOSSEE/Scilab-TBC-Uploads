//Chapter-11 example 45
//=============================================================================
clc;
clear;
//Given data
Pt      = 100*10^3;         // Peak tx. power 
PRF     = 1000;             // pulse repetitive freq. in Hz
PW      = 1.2*10^-6;        // Pulse Width in sec

//Calculations
DC      = PRF*PW            // Duty cycle
Pav     = Pt*DC             // Avg. power

//Output
mprintf('Duty cycle is %3.4f\n Average power is %3.0f Watts',DC,Pav);

//==============================================================================
