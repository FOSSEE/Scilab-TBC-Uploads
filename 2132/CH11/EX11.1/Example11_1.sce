//Example 11.1
clc;
clear;
close;
format('v',5);
//Given data :
staticPHead=5;//meter
stagnationPHead=6;//meter
h=stagnationPHead-staticPHead;//meter
g=9.81;//constant
Cv=0.98;//Coeff of pilot tube
V=Cv*sqrt(2*g*h);//m/s
disp(V,"Velocity of flow in m/sec : ");
