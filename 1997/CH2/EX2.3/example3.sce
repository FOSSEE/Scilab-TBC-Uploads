//Chapter-2 example 2.3
//=============================================================================
clc;
clear;
UR=200;//unambiguous range in kms
BW=1*10^6;//bandwidth in hz
V0=3*10^8;//velocity in m/s
//Calculations
PRF=V0/(2*UR*10^3);//pulse repetition frequency in hz
PRI=1/PRF;//pulse repetition interval in sec
RR=V0/(2*BW);//Range Resolution in mts
PW=(2*RR)/(V0);//pulse width
//Calculations
mprintf('pulse repetition frequency is %3.2f Hz\n pulse repetition interval is %3.2f msec\n Range Resolution is %3.2f m\n pulse width is %3.1fusec',PRF,PRI*1000,RR,PW*10^6);

