clc
clear

r=16;       //Compression Ratio
D=0.21;     //Diameter
L=0.3;      //Length
P1=1;       //in bar
G=1.4;
T1=17+273;  //in K
Z=[0.1*(r-1)+1];
Vs=(22/7)*(1/4)*D*D*L;
Vc=Vs/15;
V2=Vc;
printf('Vc= V2= %2.6f m^3',Vc);
printf('\n');
V1=Vc+Vs;
printf('V1= %2.4f m^3',V1);
printf('\n');
V3=(0.1*(Vs))+(V2);
printf('V3= %2.4f m^3',V3);
printf('\n');

//For Process 1-2
P2=r^G;
printf('P2= %2.1f bar',P2);
printf('\n');

T2=T1*(r^(G-1));
printf('T2= %2.1f K',T2);
printf('\n');

T3=Z*T2;
printf('T3= %2.1f K',T3);
printf('\n');

P3=P2;
P4=P3*((V3/V1)^G);
printf('P4= %2.1f bar',P4);
printf('\n');

T4=T3*((V3/V1)^(G-1));
printf('T4= %2.1f K',T4);
printf('\n');

Cv=0.718;
Cp=1.005;

Eff=100*(1-((Cv*(T4-T1))/(Cp*(T3-T2))));
printf('Efficiency: %2.1f Percent',Eff);
printf('\n');

R=0.287;
m=(P1*100*V1)/(R*T1);
Pm=(m*((Cp*(T3-T2))-(Cv*(T4-T1))))/(Vs);
printf('Mean Effective Pressure= %2.1f kPa',Pm);
printf('\n');

N=300;          //Cycles per minute
W=10.41;
EP=W*(N/60);
printf('Engine Power= %2.2f kW',EP);
printf('\n');
