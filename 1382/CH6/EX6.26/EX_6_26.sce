// Example 6.26;// Gain
clc;
clear;
close;
a=60;// OPEN LOOP VOLTAGE GAIN IN dB
A= 10^(a/20);// open voltage gain
Beta=0.009;// feedback ratio
Af= (A/(1+(Beta*A)));//GAIN WITH FEEDBACL
AfdB= 20*(log10(Af));//gain with feedback in dB
disp(AfdB,"gain with feedback in dB is")
