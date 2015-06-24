//Ex_7_3
clc;
clear;
close;
format('v',6);
//given data : 
alfa=0.90;//current gain
ICO=15;//micro A(reverse saturation currenrt)
IB=0.5;///mA(Base Current)
Beta=alfa/(1-alfa);//unitless
IC=Beta*IB+(1+Beta)*ICO/1000;//mA(Collector Current)
disp(IC,"Collector Current(mA)");
