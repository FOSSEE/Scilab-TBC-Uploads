// Example 6.6;// open loop voltage gain
clc;
clear;
close;
Af= 100;//GAIN WITH FEEDBACK
dAf=1/100;// OPEN LOOP VOLTAGE GAIN 
dA= 10/100;// open voltage gain
BetaA=(dA/dAf)-1;// feedback factor
A=Af*(1+BetaA);//open loop voltage gain
disp(A,"open loop voltage gain is")
