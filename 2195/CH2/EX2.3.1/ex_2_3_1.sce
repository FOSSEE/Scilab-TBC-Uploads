//Example 2.3.1: precision of the 5th measurement
clc;
clear;
close;
//given data :
format('v',6)
X1=98;
X2=101;
X3=102;
X4=97;
X5=101;
X6=100;
X7=103;
X8=98;
X9=106;
X10=99;
Xn_bar=(X1+X2+X3+X4+X5+X6+X7+X8+X9+X10)/10;
Xn=101;// value of 5th measurement
P=(1-abs((Xn-Xn_bar)/Xn_bar))*100;
disp(P,"precision of the 5th measurement,P(%) = ")
