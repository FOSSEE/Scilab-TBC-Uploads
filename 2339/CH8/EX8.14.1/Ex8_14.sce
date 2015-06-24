clc
clear

P2=6;
P1=0.96;
n=1.3;
CV=0.04;

Ev=[1-[CV*[((P2/P1)^(1/n))-1]]]*100;
printf('Clearance Volumetric Efficiency: %3.1f Percent',Ev);
printf('\n');

D=0.09;
L=0.1;
Vs=(22/7)*(1/4)*(D*D*L);
Vc=0.04*Vs;
V4=Vc*[(P2/P1)^(1/n)];
V1=Vc+Vs;
EDV=V1-V4;
printf('Effective Displacement Volume: %3.5f m^3',EDV);
printf('\n');

T1=313;
Tf=293;
Pf=1;
Vf=[(P1*(EDV)*Tf)]/[T1*Pf];
N=410;
FAD=Vf*N*2*60;
printf('Free air delivered: %3.2f m^3',FAD);
printf('\n');

W=[n/(n-1)]*[P1*100*(V1-V4)]*[((P2/P1)^((n-1)/n))-1];
IP=W*2*N/60;
printf('Indicated Power: %3.2f kW',IP);
printf('\n');
