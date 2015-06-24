clc
clear

r=6;        //Compression Ratio
G=1.4;

Eff=100*(1-(1/(r^(G-1))));
printf('Efficiency: %2.2f Percent',Eff);
printf('\n');

m=1;            //in kg
R=0.287;        //Universal Gas Constant
T1=27+273;      //in K
P1=1;        //in bar

V1=(m*R*T1)/(P1*100);
V2=V1/r;
Vc=V2;
Vs=V1-Vc;

T2=T1*(r^(G-1));
Cv=0.718;
Qs=1046;
T3=(Qs/Cv)+T2;
T4=T3/(r^(G-1));
W=Qs-(Cv*(T4-T1));
Pm=W/Vs;
printf('Effective Mean Pressure: %2.2f kPa',Pm);
printf('\n');
