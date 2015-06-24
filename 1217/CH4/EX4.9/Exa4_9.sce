//Exa 4.9
clc;
clear;
close;
// given data
R1=10;//in Kohm
R4=8;//in Kohm
R5=3;//in Kohm
RF=45;//in Kohm
AD=(1+2*R4/R5)*(RF/R1);
disp(AD,"Gain for the instrumention amplifier is : ")