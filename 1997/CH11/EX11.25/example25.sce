//Chapter-11 example 25
//=============================================================================
clc;
clear;
//input data
PRF = 2*10^3;//pulse repetitive frequency in Hz
Vo  = 3*10^8;//velocity of EM wave in m/s
mprintf('f1 = first operating frequency of MTI Radar\n');
mprintf(' f2 = second operating frequency of MTI Radar\n');
mprintf(' 2nd blind speed of 1st radar = (2Vo/2f1)*PRF\n 5th blind speed of 2nd radar = (5Vo/2f2)*PRF\n');
mprintf(' PRF(V0/f1) = (5/2)*(Vo/f2)*PRF\n');
mprintf(' (f2/f1) = 5/2\n');

//==============end of the program=============================================
