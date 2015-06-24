//Chapter-11 example 2
//=============================================================================
clc;
clear;
Vo = 3*10^8;//velocity of EM wave in m/s
t  = 20*10^-6;//echo time in sec
// calculations

R = (Vo*t)/2;//distance b/n target and Radar in m

// Output
mprintf('Distance of Target from the Radar is %g Km',R/1000 );

//==========end of program===================================================== 
