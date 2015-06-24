//Example 3.5: Magnitude of error
clc;
clear;
close;
//given data :
p=100.31;// in ohm
q=200;// in ohm
P=100.24;// in ohm
Q=200;// in ohm
S=100.03*10^-6;// in ohm
r=700*10^-6;// in ohm
Y=50;// in micro-ohm
X=(((P/Q)*S)+(((q*r)/(p+q))*((P/Q)-(p/q))))*10^6;
Error=Y-X;
disp(Error,"Magnitude of error,(micro-ohm) = ")
