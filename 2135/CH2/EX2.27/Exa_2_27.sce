//Exa 2.27
clc;
clear;
close;
format('v',8);

//Given Data : 
Q1_2=85;//KJ
Q2_3=-90;//KJ
W2_3=-20;//KJ

Q3_1=0;//Adiabatic process
W1_2=0;//constant volume process
//integrate(dQ)=integrate(dW)
W3_1=Q1_2+Q2_3+Q3_1-W1_2-W2_3;//KJ
disp(W3_1,"Direction is 3-1 and work in KJ : ");
