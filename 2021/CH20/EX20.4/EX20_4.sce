//Finding of Qth ,Pth ,ha
//Given
D=0.15;
L=0.3;
N=50;
H=25;
ld=22;
dd=0.1;
Qac=0.0042;
rho=1000;
g=9.81;
//To Find
A=(%pi/4)*D^2;
a=(%pi/4)*(dd)^2;
Z=(2*%pi*N)/60;
r=L/2;
Qth=(A*L*N)/60;
Pth=(rho*g*Qth*H)/1000;
S1=((Qth-Qac)/Qth)*100;
ha=(ld/g)*(A/a)*r*Z^2;
disp("Qth ="+string(Qth)+" m^3/sec");
disp("Pth ="+string(Pth)+" Kilo Watts");
disp("ha ="+string(ha)+" meter");

