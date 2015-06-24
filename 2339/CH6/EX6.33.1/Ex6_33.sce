clc
clear

P1=1;       //in bar
T1=15+273;      //in K
P2=15;      //in bar
P3=40;      //in bar
G=1.4;

r=(P2/P1)^(1/G);
Eff=100*[1-(1/(r^(G-1)))];
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');

T2=T1*[(P2/P1)^((G-1)/G)];
T3=T2*(P3/P2);
Cv=0.718;

Qs=Cv*(T3-T2);
W=Eff*Qs;
R=0.287;

V1=(R*T1)/(P1*100);
V2=V1/r;

Vs=V1-V2;
Pm=W/(Vs*100);

printf('Mean Effective Pressure is %2.1f kPa',Pm);
printf('\n');
