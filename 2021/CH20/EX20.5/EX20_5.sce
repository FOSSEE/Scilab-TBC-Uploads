//Finding of Pmax ,Pressure at begining and end of Stroke
//Given
D=0.2;
L=0.4;
l=6;
ds=0.1;
hs=3.5;
H=10.3;
N=35;
g=9.81;
//To Find
A=(%pi/4)*D^2;
a=(%pi/4)*(ds)^2;
r=L/2;
Z=(2*%pi*N)/60;
Pmax=(l/g)*(A/a)*r*Z^2;
P=hs+Pmax;
P1=H-P;
disp("Pmax ="+string(Pmax)+" meter");
disp("Pressure at Begining ="+string(P)+" meter");
disp("Pressure at End ="+string(P1)+" meter");
