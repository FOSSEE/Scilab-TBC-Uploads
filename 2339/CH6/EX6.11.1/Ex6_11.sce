clc
clear

Vs=500;         //in cm^3
Vc=55;          //in cm^3
T1=30+273;      //in K
P1=1;           //in bar
T3=1450+273;        //in K
G=1.4;
R=0.287;
Cv=0.718;
r=(Vs+Vc)/Vc;
Eff=100*(1-(1/(r^(G-1))));
printf('The standard air Efficiency is %3.2f Percent',Eff);
printf('\n');

T2=T1*(r^(G-1));
Qs=Cv*(T3-T2);
W=Eff*Qs;

V1=Vc+Vs;
m=(P1*100*V1*(10^-6))/(R*T1);
Pm=(W*m)/(100*(Vs*(10^-6)));
printf('The Mean Effective Pressure is %3.1f kPa',Pm);
printf('\n');
