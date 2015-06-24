clc
clear

r=16;       //Compression Ratio
P1=1;       //in bar
T1=20+273;
T3=1431+273;        //in K
G=1.4;

T2=T1*(r^(G-1));
Z=T3/T2;
T4=(Z^G)*T1;
Eff=100*[1-((T4-T1)/(G*(T3-T2)))];
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');

Cp=1.005;
Qs=Cp*(T3-T2);
W=Eff*(Qs/100);
R=0.287;
V1=(R*T1)/(P1*100);
V2=V1/r;
V=V1-V2;

Pm=W/(V);
printf('Mean Effective Pressure %2.1f kPa',Pm);
printf('\n');
