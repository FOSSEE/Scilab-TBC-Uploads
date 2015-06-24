//Chapter-11 example 9
//=============================================================================
clc;
clear;
//input data
F  = 6*10^9;//Transmitting Frequency of Radar
Vr = 250;//velocity of automobile in Kmph
Vo    = 3*10^8;//velocity of EM wave in m/s

//Calculations

Va    = Vr*(5/18)//velocity of automobile in m/s
Fd    = (2*Va*F)/Vo//Doppler Frequency shift in Hz

//Output
mprintf('Doppler Frequency shift is %3.3f KHz',Fd/1000)

//=============end of the program==============================================
