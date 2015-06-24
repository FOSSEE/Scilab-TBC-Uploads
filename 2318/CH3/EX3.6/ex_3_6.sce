//Example 3.6: Unknown resistance
clc;
clear;
close;
//given data :
p=100.6;// in ohm
q=300.25;// in ohm
P=100.5;// in ohm
Q=300;// in ohm
S=0.0045;// in ohm
r=0.1;// in ohm
X=(((P/Q)*S)+(((q*r)/(p+q+r))*((P/Q)-(p/q))))*10^3;
disp(X,"Unknown resistance,X(m-ohm) = ")
