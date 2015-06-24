//Exa 2.4
clc;
clear;
close;

disp("For three wire dc system, line current I1=(VS-VL)/R & P1=2*VL*I1=2*VL*(VS-VL)/R");
disp("For four wire three phase ac system, line current I2=(VS-VL)/R & P2=3*VL*I2*pf=3*VL*(VS-VL)/R");
//P2=3/2*2*VL*(VS-VL)/R////It implies that P2=3/2*P1
P1=poly(0,'P1');
P2=3/2*P1;
Diff=P2-P1;
Percent_Diff=coeff(numer(Diff/P1*100));//%
disp(Percent_Diff,"Extra power that can be supplied in %");
