//Example 8.6.//power delivered
clc;
clear;
close;
//given data :
format('v',6)
Ft=35300;// in N
V=48;// in kmph
Po=((Ft*V*1000)/3600)*10^-3;
Ft1=55180;//in N
Pd=Po*sqrt(Ft1/Ft);
disp("part (a)")
disp(Pd,"power delivered(kW) = ")
Pd1=Po*(Ft1/Ft);
disp("part (b)")
disp(Pd1,"power delivered(kW) = ")
