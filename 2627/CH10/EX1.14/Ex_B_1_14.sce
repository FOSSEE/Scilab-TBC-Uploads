//Part B Ex 1.14
clc;clear;close;
format('v',5);
A=10000;//stable voltage gain
B=1/A;//unitless
//For A=100000;//gain
A=100000;//gain
G=A/(1+A*B);//overall gain
disp(G,"When the gain of amplifier is 100000, Overall gain will be");
A=200000;//gain
G=A/(1+A*B);//overall gain
disp(G,"When the gain of amplifier is 200000, Overall gain will be");
