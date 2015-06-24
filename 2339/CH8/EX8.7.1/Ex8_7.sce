clc
clear

P1=1;
P2=10;
Vs=0.015;
FAD=3;
Vc=Vs*0.06;
n=1.3;
T1=20+273;

IP=[n/(n-1)]*[P1*100*3]*[((P2/P1)^((n-1)/n))-1];
printf('Indicated Power= %2.1f kW',IP/60);
printf('\n');

V4=Vc*[(P2/P1)^(1/n)];
V1=Vs+Vc;
V14=0.0107;
RS=3/V14;
printf('Rotation Speed= %2.0f RPM',RS);
printf('\n');
Tf=288;
Pf=101.325;
Vf=[P1*100*(FAD)*Tf]/[T1*Pf];
printf('Vf= %2.4f m^3/min',Vf);
printf('\n');

Mcd=V1/(V14);
printf('Mcd= %2.1f ',Mcd);
printf('\n');
