//Example 5.19
clc;
clear;
close;
format('v',4);
//Given data :
D1=15/100;//meter
D2=7.5/100;//meter
g=9.81;//gravity constant
p1=4*g*10^4;//N/m^2
p2=1.5*g*10^4;//kg/cm^2
w=9.81;//kg/m^2
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
v1BYv2=A2/A1;
//v1^2/2/g+p1/w=v2^2/2/g+p2/w
//v1^2=v2^2-50*g
v2=sqrt(50*g/(1-v1BYv2^2));//m/s
Q=A2*v2;//m^3/sec
Q=Q*1000;//litres/sec
disp(Q,"Flow of water in litres/sec : ");
//Answer is wrong in the book.
