//Example 3_8
clc;
clear;
close;
format('v',5);
//given data :
V=100;//V
f=50;//Hz
R=10;//ohm
L=100;//mH
C=100;//micro F
XL=2*%pi*f*L*10^-3;//ohm
XC=1/2/%pi/f/(C*10^-6);//ohm
IR=V/R;//A
disp(IR,"Current through R(A)");
IL=V/XL;//A
disp(IL,"Current through L(A)");
IC=V/XC;//A
disp(IC,"Current through C(A)");
