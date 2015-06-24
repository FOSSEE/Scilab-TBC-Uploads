clc
clear

T1=288;     //in K
T3=1673;        //in K
Qs=800;     //in kJ/kg
G=1.4;
Cv=0.718;
R=0.287;
P1=1;

Cp=Cv*G;
T2=T3-(Qs/Cp);

x=T2/T1;
r=x^(1/(G-1));
printf('Compression Ratio %2.1f ',r);
printf('\n');

Eff=100*[1-(1/(r^(G-1)))];
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');

P3=r*T3*P1/T1;
printf('P3= %2.1f bar',P3);
printf('\n');
