//Chapter-11 example 30
//=============================================================================
clc;
clear;
//input data
PW  = 1*10^-6;//transmitted pulse width in sec
Vo  = 3*10^8;//velocity of EM wave in m/s

//Calculations
RR  = (Vo*PW)/2;
//output
mprintf('Range Resolution is %g m\n',RR);
mprintf(' As the targets are separated by 100m it is possible to resolve');
//===============end of program================================================
