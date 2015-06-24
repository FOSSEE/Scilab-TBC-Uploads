//Exa 4.1
clc;
clear;
close;
format('v',8);

//Given Data :
T1=400;//Kelvin
T2=300;//Kelvin
Q1=4800;//KJ
Q2=-4800;//KJ
//Q1/T1+Q2/T2<=0
LHS=Q1/T1+Q2/T2;//
disp(LHS,"Q1/T1+Q2/T2 = ");
disp("It is less than zero. Process is irreversible")
