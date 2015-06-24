// Example 7.25:Vf/Vo,frequency of oscillations and mimimum gain
clc;
clear;
close;
Beta=1/29;//GAIN
VfVo= (Beta+1);//
disp(VfVo,"Voltage gain is")
disp("f=1/(2*%pi*R*C*sqrt(6)) frequency of oscillations")
disp("AS gain is more than one oscillations will be sustained")
