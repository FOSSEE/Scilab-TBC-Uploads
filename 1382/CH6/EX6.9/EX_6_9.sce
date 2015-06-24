// Example 6.8;// INPUT VOLTAGE ,distortion AND close loop gain
clc;
clear;
close;
Vs=10;//output voltage in milli volts
A=1000;//amplifier gain without feedback
D=0.1;//distortion without feedback
BetaAd=40;//FEEDBACK FACTOR IN dB
BetaA=10^(BetaAd/20);// feedback ratio
Df= ((D/(1+BetaA)))*100;//distortion in percentage with feedbck
Af= (A/(1+(BetaA)));//GAIN WITH FEEDBACL
Vo= Vs*(1+BetaA)*10^-3;//new output volate in volts
disp(Vo,"new output volate in volts")
disp(Df,"distortion in percentage with feedbck is")
disp(Af,"gain with feedback  is")


