//Chapter-11 example 13
//=============================================================================
clc;
clear;
//input data
PRF   =  1000;//pulse repetition frequency per second
PW    =  0.8*10^-6;//pulse width in sec
Pp    =  10*10^6;//Peak power in watts
Vo    =  3*10^8;//velocity of EM wave in m/s;

//Calculations
Dc    =  PW*PRF;//Duty Cycle
Pav   =  Pp*Dc;//average power in watts
Rmax  =  Vo/(2*PRF);


//Output

mprintf('Average power is %g KW\n Maximum Radar Range is %g Km',Pav/1000,Rmax/1000);

//=============end of the program==============================================
