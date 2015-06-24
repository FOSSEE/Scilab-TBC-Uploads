////Example 7.10
clc;
clear;
close;
format('v',5);
//Given data :
g=9.81;//gravity constanty
L=3*1000;//meter
hf=20;//meter
Q=1;//m^3/sec
f=0.02;//coeff. of friction
//v=sqrt(hf*2*g/4/f/L/D);//it is v^2*D
D2v=Q/(%pi/4);//it is D^2*v
D=(Q/(%pi/4)/sqrt(hf*2*g/4/f/L))^(2/5);//meter
D=D*1000;//mm
disp(D,"Diameter of pipe in mm   : ");
