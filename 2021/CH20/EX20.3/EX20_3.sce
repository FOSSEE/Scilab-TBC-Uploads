//Finding of Pressure Head
//Given
D=0.15;
L=0.3;
hs=4;
N=40;
l=5;
ds=0.1;
p=10.3;
g=9.81;
//To Find
A=(%pi/4)*D^2;
a=(%pi/4)*(ds)^2;
r=L/2;
Z=(2*%pi*N)/60;
ha=(l/g)*(A/a)*r*Z^2;
disp("Pressure Head ="+string(ha)+" meter");
