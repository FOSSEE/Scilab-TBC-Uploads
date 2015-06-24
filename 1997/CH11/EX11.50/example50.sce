//Chapter-11 example 50
//=============================================================================
clc;
clear;
//Given data

Vo    = 3*10^8;        // vel of EM wave m/s;
PRT   = 1.4*10^-3;     // pulse repetitive time. in sec
PW    = 5 *10^-6;         // Pulse width in sec
Pt    = 1000*10^3;     //Peak power in watts

//Calculations

DC      = PW/PRT           // Duty cycle
Pav     = Pt*DC            // avg. power in W

//output

mprintf('Duty cycle = %e\n Average power = %g W',DC,Pav );

//==============================================================================
