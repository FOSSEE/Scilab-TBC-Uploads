// Example 2.43 A variable x follows Poisson distribution
clc;
clear;
m=16;
s_d=sqrt(m);
disp(1-0.8092," = 1-(Area of under standard normal curve )",(19.5-m)/s_d,"P(x>=20 of Poisson Distribution)  = (19.5-m)/s_d =");
