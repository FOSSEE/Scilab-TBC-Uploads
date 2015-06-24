//Chapter-2 example 2.6
//=============================================================================
clc;
clear;
PW = 2*10^-6;       //pulse width in sec
PRF=800;            //pulse repetition frequency in KHz
V0=3*10^8;          //velocity in m/s
//Calculations
Ru=V0/(2*PRF);      //unambigious range in mts
RR=(V0*PW)/2;       //Range resolution in m
//output
mprintf('unambigious range is %g Km\n Range resolution is %g m',Ru/1000,RR);
