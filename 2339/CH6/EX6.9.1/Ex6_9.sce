clc
clear

T3=15+273;      //in K
T4=T3;
P3=1.1;     //in bar
P4=4;       //in bar
P1=12;      //in bar
N=150;      //in rpm
G=1.4;

T1=T4*((P1/P4)^((G-1)/G));
Eff=100*(1-(T4/T1));
printf('The Efficiency is %3.2f Percent',Eff);
printf('\n');

r=P4/P3;
R=0.287;
m=1;

W=m*R*(T1-T3)*(log(r));
P=W*(N/60);
printf('The Power is %3.1f kW',P);
printf('\n');
