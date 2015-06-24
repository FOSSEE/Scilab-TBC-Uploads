//Exa 2.3
clc;
clear;
close;
//Given data
alfa=0.98;//unitless
deltaIB=0.2;//in mA
Beta=alfa/(1-alfa);//unitless
deltaIC=Beta*deltaIB;//in mA
disp("Change in collector curent : "+string(deltaIC)+" milli Ampere.");