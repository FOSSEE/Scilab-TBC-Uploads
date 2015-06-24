//Finding of Slip ,Power required
//Given
N=50;
Qac=0.015;
L=0.4;
D=0.25;
hd=25;
hs=4;
rho=1000;
g=9.81;
//To Find
A=(%pi/4)*D^2;
Qth=(2*A*L*N)/60;
S=Qth-Qac;
P=((2*rho*g*A*L*N)*(hs+hd))/60000;
disp("Slip ="+string(S)+" m^3.sec");
disp("Power required ="+string(P)+" Kilo Watts");
