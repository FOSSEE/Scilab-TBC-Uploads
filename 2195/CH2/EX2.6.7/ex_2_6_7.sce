//Example 2.6.7. // limiting error
clc;
clear;
close;
//given data :
format('v',7)
fsd=100;// in volts
A=1;// (+ve or -ve) in %
del_A=(A/100)*fsd;
As=15;//in volts
e1=del_A/As;
e=e1*100;
disp(e,"limiting error,e(%) = ")
