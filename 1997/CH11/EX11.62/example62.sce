//Chapter-11 example 62
//=============================================================================
clc;
clear;
//Given data
Runamb     = 150*10^3;      // unambigiuous range in m
BW         = 10^6;          // bandwidth in Hz
Vo         = 3*10^8;           //vel of Em wave in m/s;

//Calculations
PRF         = Vo/(2*Runamb) ;   //pulse repetitive freq. in Hz 
PRT         = 1/PRF;            // pulse repetition interval
RR          = Vo/(2*BW);        // Range Resolution
PW          = (2*RR)/Vo;        //Pulse width in sec

//Output
mprintf('PRF = %3.2f Hz\n pulse repetition interval = %3.1f ms\n Range Resolution = %d m\n PulseWidth = %3.2f us',PRF,PRT*1000,RR,PW*10^6 );

//==============================================================================
