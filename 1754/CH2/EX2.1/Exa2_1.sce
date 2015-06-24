//Exa 2.1
clc;
clear;
close;
//Given data
deltaIB=50;//in uA
deltaIC=1;//in mA
deltaIC=deltaIC*10^3;//in uA
Beta=deltaIC/deltaIB;//unitless
disp(Beta,"Current Amplification Factor,Beta :");
Alfa=Beta/(1+Beta);//unittless
disp("Current Amplification Factor,Alfa :"+string(Alfa)+" or 20/21");