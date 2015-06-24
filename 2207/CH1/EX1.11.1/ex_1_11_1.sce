//Example 1.11.1: peak reverse recovery current
clc;
clear;
close;
//given data :
itt=10;// time in micro seconds
qtt=150;//charge in micro colums
prrc=((2*qtt)/itt);//peak reverse recovery current in amperes
disp(prrc,"peak reverse recovery current in amperes")
