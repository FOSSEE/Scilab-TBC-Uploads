//Chapter-11 example 10
//=============================================================================
clc;
clear;
//input data
F  = 9*10^9;//Transmitting Frequency of Radar
Vr = 800;//velocity of aircraft in Kmph
Vo = 3*10^8;//velocity of EM wave in m/s

//Calculations

Va    = Vr*(5/18)//velocity of aircraft in m/s
Fd    = (2*Va*F)/Vo//Doppler Frequency shift in Hz
Fr    = F+Fd;//frequency of reflected echo in Hz
//Output
mprintf('Doppler Frequency shift is %g Hz\n frequency of reflected echo is %e Khz\n',Fd,Fr/1000)
mprintf('Note: doppler frequency shift wrongly printed in Text Book as 1333.3 Hz');
//=============end of the program==============================================
