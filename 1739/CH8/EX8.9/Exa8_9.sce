//Exa 8.9
clc;
clear;
close;
//Given data :
C=1;//in pF
//Part (a) :
FH=1;//in MHz
R=1/((2*%pi*FH*10^6*C)*10^-12);//in ohm
disp(R*10^-3,"For 1 MHz, Maximum Load Resistnce in Kohm : ");

//Part (b) :
FH=1;//in GHz
R=1/((2*%pi*FH*10^9*C)*10^-12);//in ohm
disp(R,"For 1 GHz, Maximum Load Resistnce in Ohm : ");