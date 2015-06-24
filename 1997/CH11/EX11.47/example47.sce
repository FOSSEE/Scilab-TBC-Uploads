//Chapter-11 example 47
//=============================================================================
clc;
clear;
//Given data

Vo    = 3*10^8;        // vel of EM wave m/s;
PRF   = 1000;          // pulse repetitive freq. in Hz
PW    = 10^-6;         // Pulse width in sec

//Calculations

DC      = PRF*PW         // Duty cycle

Runamb  = Vo/(2*PRF);      // Distance of the Target

//output

mprintf('Duty cycle = %g\n Maximum unambiguous range = %g Km',DC,Runamb/1000 );

//==============================================================================
