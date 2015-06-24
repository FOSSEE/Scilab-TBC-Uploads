//Chapter-11 example 18
//=============================================================================
clc;
clear;
//input data
F     = 10*10^9;//operating frequency of radar in Hz
Vo    =  3*10^8;//Velocity of EM wave in m/s
Vr1    =  100;//velocity of one aircraft in m/s
theta  = 45;//angle b/n velocity vector and radar axis for second aircraft
Vr     = 200;//vel in m/s
//Calculations
lamda = Vo/F;//wavelength in m
Fd1   = (2*Vr1)/lamda//doppler shift due to 1st aircraft
Vr2   = Vr*cos(45*%pi/180)//radial velocity of the second aircraft
Fd2   = (2*Vr2)/lamda//doppler shift due to 2nd aircraft
Fd    = Fd2-Fd1//difference in doppler shift in Hz
T     = 1/Fd;//time required to resolve the aircraft in sec

//Output
mprintf('Minimum time required to resolve the aircrafts is %g usec\n',T*10^6);
mprintf(' Note: in textbook there is a mistake in the calculation of doppler shift Fd1');
//============end of the program================================================
