//Example 3_38
clc;
clear;
close;
format('v',7);
//given data :
R=50;//ohm
L=1;//mH
Im=5;//A//Maximum current
f0=50;//Hz
C=1/(2*%pi*f0)^2/(L/1000);//F
disp(C,"Value of C(F)");
V=Im*R;///V
disp(V,"Applied Voltage(V)");
//Answer is not accurate in the book.
