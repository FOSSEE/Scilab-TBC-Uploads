clc
clear

D=0.2;
L=0.3;
Vs=(22/7)*(1/4)*D*D*L;
Vc=0.04*Vs;

V3=Vc;
P2=9;
P1=1;
n=1.3;
V4=V3*[(P2/P1)^(1/n)];
V1=Vs+Vc;
W=[n/(n-1)]*[P1*100]*[V1-V4]*[((P2/P1)^((n-1)/n))-1];
R=0.287;
T1=15+273;
Md=[P1*(V1-V4)*100]/[R*T1];
Wpkg=W/Md;
printf('Word done per kg: %3.2f kJ/kg of air',Wpkg);
printf('\n');

T2=T1*[(P2/P1)^((n-1)/n)];
G=1.4;
Q=[(G-n)/(G-1)]*[(R*(T1-T2))/(n-1)];
printf('Heat Transfereed: %3.2f kJ/kg',Q);
printf('\n');

Pm=W/Vs;
printf('Mean Effective Pressure: %3.2f kPa',Pm);
printf('\n');

Mac=V1/(V1-V4);
printf('Mass of air compressed to delivered: %3.2f ',Mac);
printf('\n');

Tf=T1;
Pf=101.325;
Vf=[P1*100*(V1-V4)*Tf]/[Pf*T1];
RPM=500;
Vf=Vf*RPM;
printf('FAD at standard condition: %3.2f m^3/min',Vf);
printf('\n');

IP=[W*RPM]/60;
Etrans=0.92;
Emech=0.85;
Emotor=0.75;
MP=IP/[Etrans*Emech*Emotor];
printf('Motor Power: %3.2f kW',MP);
printf('\n');

MAC=Md*RPM;
printf('Mass of air compressed: %3.2f kg/min',MAC);
printf('\n');

ACC=MAC*Mac;
printf('Air compressed in cylinder: %3.2f kg/min',ACC);
printf('\n');

printf('End Temperature: %3.2f K',T2);
printf('\n');
