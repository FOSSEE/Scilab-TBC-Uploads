clear;
clc;
m=400,g=9.8,Ur=3000, Uo=4*%pi*10^-7,S=40*10^-4,la=1*10^-4,li=50*10^-2,I=1;
B=sqrt(m*g*Uo/S);
Ra=2*la/(Uo*S);
Ri=li/(Uo*Ur*S);
N=(Ra+Ri)/(Ra*Uo)*B*la;
disp(N,'No of turns= ');