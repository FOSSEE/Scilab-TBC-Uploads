clc
clear

T1=57+273;          //in K
T2=603+273;         //in K
T3=1950+273;        //in K
T4=870+273;         //in K
G=1.4;
P1=1;               //in bar
Cp=1.005;
Cv=0.718;

P2=P1*((T2/T1)^((G)/(G-1)));
printf('Maximum Pressure attained is %2.1f bar',P2);
printf('\n');

Qs=Cp*(T3-T2);           //Heat Supplied
Qr=Cv*(T4-T1);          //Heat Rejected
Eff=100*(1-(Qr/Qs));
printf('Efficiency is %2.0f Percent',Eff);
printf('\n');
