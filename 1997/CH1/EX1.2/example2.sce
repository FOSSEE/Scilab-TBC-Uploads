//Chapter-1, Example 1.2, Page 35
//=============================================================================
clc;
clear;

//INPUT DATA
PRF= 1.2*10^3;//pulse repetitive frequency in Hz
PI = 0.6*10^-3;//pulse interval in sec

//Calculations

PRT = 1/PRF;//pulse repetition frequency in Hz
PW  = PRT-PI;//pulse width in sec;

//Output
mprintf('Pulse repetitive time is %3.3f ms\n Pulse width is %3.3f ms',PRT*1000,PW*1000);
