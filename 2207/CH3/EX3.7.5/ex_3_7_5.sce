// Example 3.7.5;alpha
clc;
clear;
close;
format('v',4)
disp("part (a)")
vc=135;//in volts
vs=220;//in vlts
rl=0.5;//in ohms
io=10;//in ampeeres
vm=sqrt(2)*vs;//
vldc=io*rl+vc;//
alpha=acosd((vldc*%pi)/(2*vm));//
disp("alpha is in degree "+string(alpha)+" ")
disp("part (b)")
vc=145;//in volts
vs=220;//in vlts
rl=0.5;//in ohms
io=10;//in ampeeres
vm=sqrt(2)*vs;//
vldc=io*rl-vc;//
alpha=acosd((vldc*%pi)/(2*vm));//
disp("alpha  in degree "+string(alpha)+" ")
