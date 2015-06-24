// Example 5.6:series capacitance and transfer function
clc;
clear;
close;
f=100;//frequency in hertz
fc=25;//corner frequency
rs=2;//series resistance in killo ohms
rp=4;//PARALLEL resistance in killo ohms
Cs= (1/(2*%pi*fc*(rs+rp)*10^3))*10^6;//series capacitance in micro farad
ts= Cs*10^-6*(rs+rp)*10^3;//time constant
Tf= ((rp/(rs+rp))*((2*%pi*f*ts)/(sqrt(1+(2*%pi*f*ts)^2))));//transfer function
disp(Cs,"series capacitance in micro farad")
disp(Tf,"transfer function is")

