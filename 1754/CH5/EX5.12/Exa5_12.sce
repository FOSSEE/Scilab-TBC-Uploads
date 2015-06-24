//Exa 5.12
clc;
clear;
close;
//Given data :
A=100;//gain(unitless)
BW=10;//in Hz
Beta=5;//in %
//Part (i) :
//Formula : Af=A/(1+A*Beta)
Af=A/(1+A*Beta/100);//gain with feedback(unitless)
disp(Af,"Voltage gin with feedback : ");
//Part (ii)
BW_f=BW*(1+A*Beta/100);//Bandwith after feedback in Hz
disp(BW_f,"Bandwith with negative feedback in KHz : ");