//Example No. 4.9.2
clc;
clear;
close;
format('v',6);

le=61.4;//m
Irms=50;//A
lambda=625;//m
P=160*%pi^2*(le/lambda)^2*Irms^2;//kW
Rr=160*%pi^2*(le/lambda)^2;//Ω
disp(P*10^-3,"Power radiated in kW : ");
disp(Rr,"Radiation resistance in Ω : ");
