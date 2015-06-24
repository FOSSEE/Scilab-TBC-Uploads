//Example 6.16
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//constant
d=4;//meter
d0=0.5;//meter
H1=5;//meter
H2=2;//meter
Cd=0.6;//Coefficient of discharge
ao=%pi/4*d0^2;//m^2
A=%pi/4*d^2;//m^2
t=2*A/Cd/ao/sqrt(2*g)*(sqrt(H1)-sqrt(H2))
disp(t,"Time taken to fall from 5m to 2m(in seconds) : ");
//For emptying H2=0;
H2=0;//meter
t=2*A/Cd/ao/sqrt(2*g)*(sqrt(H1)-sqrt(H2))
disp(t,"Time taken for completely emptying(in seconds) : ");
