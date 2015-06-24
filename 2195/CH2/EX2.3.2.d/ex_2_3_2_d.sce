//Example 2.3.2.d: % accuracy
clc;
clear;
close;
//given data :
Ae=80;// in V
Am=79;// in V
e=Ae-Am;
error1=(e/Ae)*100;
A=(1-abs(e/Ae));
accuracy=A*100;
disp(accuracy,"accuracy(%) = ")
