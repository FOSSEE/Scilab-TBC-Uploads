// Example 6.7;// open loop voltage gain & negaive feedback
clc;
clear;
close;
Af= 100;//GAIN WITH FEEDBACK
dAf=0.1/100;// OPEN LOOP VOLTAGE GAIN 
dA= 10/100;// open voltage gain
BetaA=(dA/dAf)-1;// feedback factor
A=Af*(1+BetaA);//open loop voltage gain
NF= Af/A;//amount of negative feedback
disp(A,"open loop voltage gain is")
disp(NF,"amount of negative feedback is")
