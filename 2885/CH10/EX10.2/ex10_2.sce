//Determine the gain of feedback amplifier in dB
clear;
clc;
//soltion
//given

Ad=60;//dB      //internal gain in dB
A=10^(Ad/20);    //internal gain
B=1/20;//feedback factor
Af=A/(1+A*B);
Afd=20*log10(Af);
printf("The gain of feedback amplifier %.2f dB",Afd);
