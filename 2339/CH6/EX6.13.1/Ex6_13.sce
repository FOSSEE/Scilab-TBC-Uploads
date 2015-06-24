clc
clear

D=0.1;      //Diameter
L=0.12;     //Length
V=(22/7)*(1/4)*D*D*L;
T1=19+273;
r=6.5;      //Compression ratio
P1=1;       //in bar
G=1.4;      //Gamma
Vs=9.425*(10^-4);
Vc=Vs/(r-1);
V1=Vc+Vs;
printf('V1= %3.5f m^3',V1);
printf('\n');

V2=Vc;
V3=Vc;
P2=P1*(r^G);
printf('P2= %3.1f bar',P2);
printf('\n');

T2=T1*(r^(G-1));
printf('T2= %3.1f K',T2);
printf('\n');

//For process 2-3
Qs=1900;
Cv=0.718;
T3=(Qs/Cv)+T2;
printf('T3= %3.1f K',T3);
printf('\n');

P3=P2*(T3/T2);
printf('P3= %3.1f bar',P3);
printf('\n');

//For process 4-1
V4=V1;
P4=P3*((V3/V4)^G);
printf('P4= %3.1f bar',P4);
printf('\n');

T4=T1*(P4/P1);
printf('T4= %3.1f K',T4);
printf('\n');

Eff=100*(1-(1/(r^(G-1))));
printf('Efficiency= %3.1f Percent',Eff);
printf('\n');

R=0.287;
m=(P1*100*V1)/(R*T1);
Pm=(Eff*Qs*m)/(10000*Vs);
printf('Mean Effective Pressure= %3.1f bar',Pm);
printf('\n');
