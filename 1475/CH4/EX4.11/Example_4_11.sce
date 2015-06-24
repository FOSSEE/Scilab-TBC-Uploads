//Example 4.11 A sample of 6500 screws is taken from a large consignment and 75 are found to be defective
clc;
clear;
n=600;
m=75;
P=m/n;
Q=1-P;
SE=sqrt((P*Q)/n);
disp("percent",(P-3*SE)*100,"to",(P+3*SE)*100,"Limits of P are from ");
