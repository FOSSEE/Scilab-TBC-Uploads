//Caption:Determine the powers reflected at port 3 & power divisions at other ports.
//Exa:6.6
clc;
clear;
close;
p_1=0.5;
p_2=0.6;
p_4=0.8;
b_1=0.6566;
b_2=0.7576;
b_3=0.6536;
b_4=0.00797;
a_1=p_1*b_1;
a_2=p_2*b_2;
a_3=1;//in Watts
a_4=p_4*b_4;
disp(b_1^2,'Power at port 1(in W)=');
disp(b_2^2,'Power at port 2(in W)=');
disp(b_3^2,'Power at port 3(in W)=');
disp(b_4^2,'Power at port 4(in W)=');