// Exa 4.3
// To calculate the spacing between successive pulses of the multiplexed signal.

clc;
clear all;

Fs=8*10^3;  //in Hz
Fm=3.4*10^3; // in Hz
VCH=24; //voice channels
SCH=1; //sunchronization channel
PDur=1;  //extra pulse duration in microsec

//solution
Ts=1/(Fs);
TimeCH=Ts/(VCH+SCH)*10^6;   // in microsec
printf('Time between the pulses is %d microsec\n',(TimeCH-PDur));
//Now by using the engineering version of Nyquist rate sampling
NyquistRate=2.2*Fm;
Ts1_microsec=1/NyquistRate*10^6;
Tc=round(Ts1_microsec)/(VCH+SCH);
printf(" Time between the pulses by using engineering version of Nyquist rate sampling  is %.2f microsec\n",(Tc-PDur));
