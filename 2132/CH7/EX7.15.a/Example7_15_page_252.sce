////Example 7.15 at page no. 252
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constant
D=30/100;//meter
l=400;//meter
Q=300;//litres/sec
f=0.008;//coeff. of friction
Q=Q*10^-3;//m^3/sec
A=%pi*D^2/4;//m^2
v=Q/A;//m/s(velocity of flow)
h1=0.5*v^2/2/g;//meter(Head loss at entrance to a pipe)
h2=4*f*l*v^2/(2*g*D);//meter(Head loss due to friction)
h3=v^2/2/g;//meter(Head loss at entrance of reservoir)
H=h1+h2+h3;//meter(Difference of water level)
disp(H,"Difference of water level between two reservoir(meter)");
//Answer in the book is not accurate as h2 is calculated wrong.
