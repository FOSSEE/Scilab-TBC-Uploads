//Finding of  Power Lost 
//Given
D=0.6;
L=1000;
Q=0.6;
ks=0.003;
rho=1000;
g=9.81;
c=50;
//To Find
//For Turbulant Flow
A=(%pi/4)*D^2;
a=2*log(3.71*(D/ks));
b=sqrt(a);
v=Q/A;
f=1/c;
Hf=(f*L*v^2)/(2*g*D);
P=(rho*g*Q*Hf)/1000;
disp(" Power Lost ="+string(P)+" Kilowatt");
