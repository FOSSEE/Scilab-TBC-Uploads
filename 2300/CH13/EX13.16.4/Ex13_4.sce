//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
RL=250*10^3//RL=load resistance in ohms in a FET amplifier
rd=100*10^3//rd=ac drain resistance in ohms
gm=0.5*10^-3//gm=transconductance in A/V
u=rd*gm//u=amplification factor
AV=-(u*RL)/(rd+RL)//AV=voltage gain
disp(AV,"The voltage gain of FET amplifier is =")
disp("kilo ohm",rd/1000,"The output resistance excluding RL is rd=")
ro=(rd*RL)/(rd+RL)//ro=output resistance including RL
disp("kilo ohm",ro/1000,"Including RL,the output resistance is=")
