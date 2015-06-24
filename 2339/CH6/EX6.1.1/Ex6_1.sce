clc
clear

m=1;        //in kg
R=0.287;    //Universal Gas Constant
r=7;        //Compression Ratio
P1=1;       //in bar
T1=24+273;  //in K
T3=2000;    //in K
G=1.4;      //Gamma

ASE=(1-(1/(r)^(G-1)))*100;
printf('Air Standard Efficiency is %3.1f Percent',ASE);
printf('\n');

P2=P1*(r)^G;
printf('Pressure at end of Compression is %3.2f Bar',P2);
printf('\n');

T2=T1*((r)^(G-1));
printf('Temperature at end of Compression is %3.2f K',T2);
printf('\n');

Cv=0.718;
Q=Cv*(T3-T2);
printf('Heat Supplied is %3.2f kJ/kg',Q);
printf('\n');

W=ASE*Q/100;
V1=(m*R*T1)/(P1*100);
V2=V1/r;
V=V1-V2;
Pm=W/V;
printf('Mean Effective Pressure is %3.2f kPa',Pm);
printf('\n');
