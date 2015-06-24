//Chapter-11 example 12
//=============================================================================
clc;
clear;
//input data
PRF   =  2000;//pulse repetition frequency per second
PW    =  1*10^-6;//pulse width in sec
Pp    =  500*10^3;//Peak power in watts

//Calculations
Dc    =  PW*PRF;//Duty Cycle
Pav   =  Pp*Dc;//average power in watts
pavdB = 10*log10(Pav);

//Output

mprintf('Average power is %g KW\n Average Power is %g dB',Pav/1000,pavdB);

//=============end of the program==============================================
