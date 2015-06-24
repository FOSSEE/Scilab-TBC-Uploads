//Example 1_43
clc;
clear;
close;
format('v',6);
//given data :
VAP=25;//V
RAP=15;//ohm
RAQ=5;//ohm
R3=5;//ohm
RBP=10;//ohm
RBQ=20;//ohm
RAB=RAP*RAQ/(RAP+RAQ)+RBP*RBQ/(RBP+RBQ);//ohm
disp(RAB,"Equivalent resistance across terminal AB(ohm)");
I=VAP/(RAP*RAQ/(RAP+RAQ));//A
VBQ=(RBP*RBQ/(RBP+RBQ))*I;//V
V=VAP+VBQ;///V
disp(V,"Required Voltage(V)");
