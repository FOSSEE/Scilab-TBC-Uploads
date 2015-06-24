//example 3.8
clc; funcprot(0);
// Initialization of Variable
M=1000;
H=40;
T=30;
E1=.9;
E2=.5;
V=220;
//calculation
W=M*H;
P=(W)/(T*550);
disp(P,"power required in hp")
printf('Pick a 5HP motor')
P1=5;
Pe=P1/E1;
I=(Pe*746)/V;
disp(I,"current required in amp")
clear()
