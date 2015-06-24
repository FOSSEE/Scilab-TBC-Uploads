clc
clear

P1=1;       //in bar
T1=15+273;      //in K
P2=15;      //in bar
P3=40;      //in bar
G=1.4;
Cv=0.718;

r=(P2/P1)^(1/G);
printf('Compression Ratio is %2.1f ',r);
printf('\n');

Eff=100*[1-(1/r^(G-1))];
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');
T2=T1*(r^(G-1));
T3=T2*(P3/P2);
T4=T3/(r^(G-1));
W=Cv*[T3-T2+(T1-T4)];

R=0.287;
V1=(R*T1)/P1;
V2=V1/r;

Pm=W/(V1-V2);
printf('Mean Effective Pressure %2.1f bar',Pm);
printf('\n');
