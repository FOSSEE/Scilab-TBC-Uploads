//Chapter-11 example 11
//=============================================================================
clc;
clear;
//input data
F  = 2*10^9;//Transmitting Frequency of Radar
Vr = 350;//velocity of sports Car in Kmph
Vo = 3*10^8;//velocity of EM wave in m/s

//Calculations

Va    = Vr*(5/18)//velocity of aircraft in m/s
Fd    = (2*Va*F)/Vo//Doppler Frequency shift in Hz
//Car moving away from Radar
Fr    = F-Fd;//frequency of reflected signal in Hz

//Output
mprintf('Doppler Frequency shift is %g Hz\n frequency of reflected echo is %g Ghz - %g Hz\n',Fd,F/10^9,Fd)
mprintf(' Note: doppler frequency shift wrongly printed in Text Book as 129.6 Hz\n Vr is printed as 9.72 m/s instead of 97.2 m/s');
//=============end of the program==============================================
