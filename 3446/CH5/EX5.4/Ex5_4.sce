// Exa 5.4
// To find the number of calls per hour per cell site.

clc;
clear all;

spectrum=12.5*10^6; //in Hz
CHBW=200*10^3;//in Hz
N=4;//reuse factor
Blocking=0.02; // 2%
callHT=120;//average call holding time in sec
PPL=4;//propogation path loss coefficient
CntrlCH=3; //No of control channels
Ts=8; // No of voice channels per RF channel

//solution
No_ofVCH=((spectrum*Ts)/(CHBW*N))-CntrlCH;
printf('\n No of voice channels for N=4 are %d',No_ofVCH);
disp("");
disp("Using the Erlang-B trafﬁc table for 122 channels with 2% blocking,we ﬁnd a trafﬁc load of 110 Erlangs. ");
TrafLoad=110;
CarryLoad=(1-Blocking)*TrafLoad;
Ncall=CarryLoad*3600/callHT;
printf('\n Calls per hour per cell for N=4 are %d calls/hour/cell \n ',round(Ncall));
S_I=10*(PPL/2)*(log10(N)-log10(1/3)-(2/PPL)*log10(6));
printf('\n Mean S/I(dB) for N=4 is %.1f dB \n ',S_I);
