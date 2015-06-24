//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
//r given in textbook is taken as rd afterwards.Hence r=rd
rd=100*10^3//rd=drain resistance in ohms
gm=3500*10^-6//gm=transconductance in terms of A/V (or S)
RL=5*10^3//RL=load resistance in ohms
u=rd*gm//u=amplification factor
AV=(u*RL)/(((u+1)*RL)+rd)//AV=voltage gain
format("v",6)
disp(AV,"The voltage gain is=")
Ro=rd/(u+1)//Ro=output resistance excluding RL
format("v",5)
disp("ohm",Ro,"The output resistance excluding RL is =")
Ro1=(rd*RL)/(rd+((u+1)*RL))//Ro1=Ro'=output resistance including RL
format("v",6)
disp("ohm",floor(Ro1),"The output resistance including RL is=")//floor function is used to round down the value

