clc
clear

P2=44;      //in bar
P3=P2;
T3=1600+273;        //in K
P1=1;       //in bar
T1=27+273;      //in K
G=1.4;

T2=T1*[(P2/P1)^((G-1)/G)];
R=0.287;

V1=(R*T1)/(P1*100);


r=(P2/P1)^(1/G);
Z=T3/T2;
Eff=100*(1-((1/(r^(G-1)))*(1/G)*((Z^G)-1)/(Z-1)));
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');
