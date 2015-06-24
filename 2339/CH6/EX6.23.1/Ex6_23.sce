clc
clear

r=16;       //Compression Ratio
P1=1;       //in bar
T1=20+273;      //in K
T3=1431+273;        //in K
G=1.4;
T2=T1*[r^(G-1)];
m=1;
R=0.287;
V1=(m*R*T1)/(P1*100);
V2=V1/r;

//For Constant Pressure Process 2-3
V3=V2*(T3/T2);
Z=V3/V2;
Eff=100*(1-((1/(r^(G-1)))*(1/G)*((Z^G)-1)/(Z-1)));
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');

Cp=1.005;
Qs=Cp*(T3-T2);
W=Qs*Eff/100;
Vs=V1-V2;
Pm=W/Vs;
printf('Effective Mean Pressure %2.1f kPa',Pm);
printf('\n');
