//Example 4.1.b // power lost
clc;
clear;
close;
//given data :
I=11; // current in A
V1=55;  // voltage in V
V2=220; // voltage in V
V=V2-V1;
R=V/I; 
P=I^2*R;
disp(P,"power lost,P(W) = ")
