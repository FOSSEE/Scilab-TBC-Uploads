//Exa 2.2
clc;
clear;
close;
//Given data
IB=25;//in uA
Beta=40;//unitless
IC=Beta*IB;//in uA
IE=IB+IC;//in uA
disp("The value of IE :"+string(IE)+" micro Ampere");