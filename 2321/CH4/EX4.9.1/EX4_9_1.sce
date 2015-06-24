//Example No. 4.9.1
clc;
clear;
close;
format('v',6);

le=100;//m
Irms=450;//A
f=40000;//Hz
c=3*10^8;//m/s////Speed of light
lambda=c/f;//m
P=160*%pi^2*(le/lambda)^2*Irms^2;//mW
Rr=160*%pi^2*(le/lambda)^2;//Ω
disp(P*10^-3,"Power radiated in W : ");
disp(Rr,"Radiation resistance in Ω : ");
//Answer wrong for radiation resistance in the book.
