//Chapter-11 example 20
//=============================================================================
clc;
clear;
//input data
Pp   = 1*10^6;//peak power in watts
PW   = 1*10^-6;//pulse width in sec
NPd   = 20;//pulses in one dwell period
PRF  = 1000;//pulse repetitive frequency

//calculations
PE   = Pp*PW;//pulse energy in joule
PED  = NPd*PE;//pulse energy in one dwell period
D    = PW*PRF;//Duty cycle
Pav  = Pp*D;//average power in watts

//output
mprintf('Average Power is %g watts\n Duty Cycle is %e\n Pulse Energy is %g Joules\n Pulse Energy in one Dwell Period is %g Joules\n',Pav,D,PE,PED);
mprintf(' Note: In textbook Values of PRF and pulses in one dwell period are varied from given values in question while solving ' );
;
//================end of the program============================================

