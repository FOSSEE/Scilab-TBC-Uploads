//Finding of Power Required
//Given
L=100;
D=0.1;
q=0.01;
mu=0.8;
//To Find
A=(%pi/4)*D^2;
v=q/A;
p=(32*q*mu*v*L)/D^2;
P=p/100;
disp("Power Required ="+string(P)+" KiloWatts");
