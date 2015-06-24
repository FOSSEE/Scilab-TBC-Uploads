//Example 2.3.2.c: relative accuracy
clc;
clear;
close;
//given data :
format('v',7)
Ae=80;// in V
Am=79;// in V
e=Ae-Am;
error1=(e/Ae)*100;
A=(1-abs(e/Ae));
disp(A,"relative accuracy,A = ")
