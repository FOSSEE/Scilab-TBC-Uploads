// Example 6.2;// feedback factor
clc;
clear;
close;
a=60;// OPEN LOOP VOLTAGE GAIN IN dB
A= 10^(a/20);// open voltage gain
AfdB=40;//gain with feedback in dB
Af= 10^(AfdB/20);//GAIN WITH FEEDBACK
BetaA= (A/Af)-1;// feedback factor
disp(BetaA,"feedback factor is")
