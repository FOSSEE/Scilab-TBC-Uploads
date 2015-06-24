//Exa 8.5
clc;
clear;
close;
//Given data
disp("Put alfa=sqrt(6) to find the gain");
alfa=sqrt(6);//unitless
Beta=1/(1-5*alfa^2);
//Barkhausen critera : A*|Beta|>=1
Beta=-Beta;//
A=1/Beta;//unitless
disp(A,"Minimum Gain of Amplifier must be  : ");
