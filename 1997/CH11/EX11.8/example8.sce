//Chapter-11 example 8
//=============================================================================
clc;
clear;
//input data
Tvel  = 1000;//target speed in kmph
F     = 10*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s

//Calculations
Vr    = 1000*(5/18);//target speed in m/s
Fd    = (2*Vr*F)/Vo;//Doppler Frequency shift in Hz

//Output
mprintf('Doppler Frequency shift Caused by aircraft is %3.2f KHz',Fd/1000);

//=============end of the program==============================================
