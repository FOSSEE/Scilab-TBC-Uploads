//Chapter-3, Problem 3.2 , Page105
//===========================================================================
clc;
clear;

//INPUT DATA
PRF= 1000;//pulse repetitive frequency in Hz
Fd = 1000;//doppler frequency in Hz;
F  = 10*10^9;//operating frequency of radar in Hz;
Vo = 3*10^8;//velocity in m/s

//Calculations
 lamda = Vo/F;
 Va    = (Fd*lamda)/2;//speed of automobile in m/s
 Va1   = Va*18/5; //speed of automobile in kmph

//Output
mprintf('Speed of automobile is %g m/s or %g kmph\n',Va,Va1 );
