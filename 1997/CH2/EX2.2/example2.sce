//Chapter-2 example 2.2
//=============================================================================
clc;
clear;
Pt=5000;    //Peak tx power in watts
Pav=1000;   //Average Power
PRF1 = 10;  //Pulse repetition frequency in khz
PRF2 = 20;  //Pulse repetition frequency in khz
//Calculations
D=Pav/Pt;//Duty cycle
PRI1=1/PRF1;    //Pulse repetitive interval in  msec
PRI2=1/PRF2;    //Pulse repetitive interval in  msec
PW1=D*PRI1;     //Pulse Width in msec
PW2=D*PRI2;     //Pulse Width in msec
PE1=Pt*PW1;     //Pulse Energy in joules
PE2=Pt*PW2;     //Pulse Energy in joules
//Output
mprintf('Duty cycle is %3.2f \n pulse repetition interval 1 is %3.2f msec\n pulse repetition interval 2 is %3.2f msec\n Pulse Width1 is %3.2f usec\n Pulse Width2 is %3.2f usec\n Pulse Energy1 is %3.2f J \n Pulse Energy2 is %3.2f J',D,PRI1,PRI2,PW1*1000,PW2*1000,PE1/1000,PE2/1000);
