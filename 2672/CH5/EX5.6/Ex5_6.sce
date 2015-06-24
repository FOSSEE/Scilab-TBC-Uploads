//Example 5_6
clc;
clear;
close;
format('v',5);
//given data : 
V=5;//V
CT=20;//pF
lambda=CT*sqrt(V);//pm
//increased V=V+1.5;//V
V=V+1.5;//V
CTnew=lambda/sqrt(V);//pF
dCT=CT-CTnew;//pF
disp(dCT,"Decrese in capacitance(pF)");
//Answer given in the textbook is not accurate.
