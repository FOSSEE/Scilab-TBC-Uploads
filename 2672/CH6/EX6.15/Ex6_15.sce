//Example 6_15
clc;
clear;
close;
format('v',4);
//given data : 
//v=50*sin(100*%pi*t)
Vm=50;//V
f=50;//Hz
rf=20;//ohm
RL=5000;//ohm
Im=Vm/(rf+RL)*1000;//mA
disp("(a) Current is "+string(Im)+"*sin(100*%pi*t) for %pi <100*%pi*t<2*%pi & it will be zero for 0 <100*%pi*t<%pi");
format('v',5);
Vdc=Im/1000/%pi*RL;//V
disp("(b) Output Voltage, Vo = "+string(Vdc)+"*sin(100*%pi*t) for %pi <100*%pi*t<2*%pi & it will be zero for 0 <100*%pi*t<%pi ");
//Assuming diode is ideal
disp("(c) Voltage across diode, v = "+string(Vdc)+"*sin(100*%pi*t) for 0 <100*%pi*t<%pi & it will be zero for %pi <100*%pi*t<2*%pi ");

