//Chapter 10, Problem 15
clc;
d=14;                       //amplifier gain
P1=8e-3;                    //input power
P2=10^(14/10)*P1;           //calculating output power using logarithm
printf("Output power = %f mW",P2*1000);
