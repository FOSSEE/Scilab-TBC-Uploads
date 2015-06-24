//Ex_7_5
clc;
clear;
close;
format('v',6);
//given data : 
IB=50;///micro A(Base Current)
IC=5;//mA(Collector Current)
IE=IC+IB/1000;//mA
Beta=IC*1000/IB;//unitless
alfa=IC/IE;//current gain
disp(IE,"Emitter Current(mA)");
disp(Beta,"Beta=");
disp(alfa,"alfa=");
disp("Verify that alfa=Beta/(Beta+1)");
disp(string(alfa==Beta/(Beta+1)));
disp("Verify that Beta=alfa/(1-alfa)");
disp(string(Beta==round(alfa/(1-alfa))));
