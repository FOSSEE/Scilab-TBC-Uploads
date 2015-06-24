//Chapter-2 example 2.5
//=============================================================================
clc;
clear;
Vo=3*10^8;//velocity in m/s
Pt=1*10^6;//peak power in watts
PW=1.2*10^-6;//pulse width in sec
PRI=1*10^-3;//pulse repetition interval in sec
//Calculations
PRF=1/PRI;//pulse repetition frequency in hz
Pav=Pt*PW*PRF;//average power in watts
D=Pav/Pt;//Duty cycle;
Rmax=Vo/(2*PRF);//maximum range of the radar in m
mprintf('pulse repetition frequency is %g KHz\n average power is %g KW\n Duty cycle = %e\n maximum range of the radar is %g Km',PRF/1000,Pav/1000,D,Rmax/1000 );
