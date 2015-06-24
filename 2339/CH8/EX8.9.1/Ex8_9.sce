clc
clear

Vs=5.665/600;
Vc=0.04*Vs;
V3=Vc;
n=1.3;
P3=5.6;
P2=0.97;
V4=V3*[(P3/P2)^(1/n)];
V1=Vs+Vc;
Vd=V1-V4;
T1=300;
Tf=288;
P1=0.96;
Pf=1.01325;
Vf=[Tf*P1*Vd]/[Pf*T1];
Mcd=V1/(Vd);
printf('Vf= %2.4f m^3/cycle',Vf);
printf('\n');
printf('Mc/Md= %2.2f ',Mcd);
printf('\n');

N=600;
W=[n/(n-1)]*[P1*100*Vd]*[((P3/P1)^((n-1)/n))-1];
IP=W*N/60;
printf('Indicated Power= %2.2f kW',IP);
printf('\n');
