clc;
V1=230;
//LET a=N2/N1
a=1/5;
RL=100;
V2=V1*a;
Vs=V2/2;
Vm=sqrt(2)*Vs;
Vdc=2*Vm/%pi;
disp('V',Vdc*1,"Vdc=");
PIV=2*Vm;
disp('V',PIV*1,"PIV=");
n=0.812//rectifier efficiency of full wave rectifier
