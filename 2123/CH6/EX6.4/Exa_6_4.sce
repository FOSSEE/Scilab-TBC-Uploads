//Example No. 6.4
clc;
clear;
close;
format('v',6);

//Given Data : 
T_directStartBYTfl=1.5;//ratio
K=sqrt(T_directStartBYTfl);//Ratio of full load torque to starting torque direct starting
//Vapplied=1/K*Vline
VappliedBYVline=1/K;
disp("Applied voltage is "+string(VappliedBYVline)+" times of Line voltage.");
LineCurrentBYIfl=1/K^2*4;//V
disp("Line current at starting is "+string(LineCurrentBYIfl)+" times of full load current.");
