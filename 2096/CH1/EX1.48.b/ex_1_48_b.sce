//Example 1.48.b://true power is a percentage of the power
clc;
clear;
dI=(-0.011);//ERROR IN CURRENT MEASUREMENT
dR=0.0025;//ERROR IN RESISTANCE
dP= 2*dI+dR;//total relative error
RP= (1/(1+dP));//true power as a percentage of orignal power
disp(RP*100,"true power as a percentage of orignal power")
