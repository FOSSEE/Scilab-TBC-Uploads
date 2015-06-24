//Chapter-7 example 8
//=============================================================================
clc;
clear;
//input data
BW     = 0.3*10^9;  //Bandwidth of waveform in Hz
PW     = 3*10^-3;   //pulse width in sec
Vo     = 3*10^8;    //velocity of EM wave

//Calculations

RR     = (Vo*PW)/2 ; //Range Resolution in m before compression

//RR   = Vo*tn1/2 ;
tn1    = 1/BW ;
RRc    = (Vo*tn1)/2 ; //Range Resolution in m after compression

//output

mprintf('Range Resolution before compression = %e m\n Range Resolution before compression = %3.2f m\n',RR,RRc );


