//Exa 3.7
clc;
clear;
close;
format('v',7);

//Given Data :
T1=400+273;//K
T2=20+273;//K
T3=100+273;//K
T4=T2;//K
Q1=12000;//KW
Q3=25000;//KW
Eta1=1-T2/T1;//Efficiency
W1=Eta1*Q1;//KW
disp(W1,"Power of Engine 1, W1 in KW : ");
Eta2=1-T4/T3;//Efficiency
W2=Eta2*Q3;//KW
disp(W2,"Power of Engine 2, W2 in KW : ");
disp("W1>W2, The engine 1 delivers more power.");
