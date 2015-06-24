//Caption:Determine the resistance to be inserted in series
//Exa:2.32
clc;
clear;
close;
V=500;//in volts
R_a=0.5;//in ohms
I_a1=60;//in amperes
E_1=V-(I_a1*R_a);//in volts
I_a2=sqrt(((0.75)^3)*I_a1^2);//in amperes
E_2=0.75*E_1*I_a2/I_a1;//in volts
R=-(E_2-480.5)/38.97;
disp(R,'the resistance to be inserted in series (in ohms)=')