//Chapter-11 example 16
//=============================================================================
clc;
clear;
//input data
F     = 10*10^9;//operating frequency of radar in Hz
Vo    =  3*10^8;//Velocity of EM wave in m/s
Vr    =  100;//velocity of car in kmph
//Calculations
lamda = Vo/F;//wavelength in m
Vc    = Vr*(5/18);//velocity of car in m/s
Fd    = (2*Vc)/lamda;//doppler shift in Hz
//Output
mprintf('Doppler Shift is %g KHz\n Frequency of the Received echo when car is approaching radar is %g Ghz + %g Khz\n Frequency of the Received echo when car is moving away from radar is %g Ghz - %g Khz',Fd/1000,F/10^9,Fd/1000,F/10^9,Fd/1000);

//=================end of program==============================================
