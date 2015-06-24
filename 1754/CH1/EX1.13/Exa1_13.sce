//Exa 1.13
clc;
clear;
close;
//Given data
format('v',6);
R=0.90;//in A/W
Pop=1;//in mW
//Part (i)
IP=R*Pop;//in mA
disp(IP,"Power of incident light 1mW, Photocurrent in mA is :");
//Part (ii)
disp("Here IP is not proportional to Pop(for Pop>1.5mW)");
disp("Hence Photourrent can not be calculated.");
