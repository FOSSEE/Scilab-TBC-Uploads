clc
clear

D=0.15;
N=100;
L=0.2;
P1=1;
T1=27+273;
P2=6;
n=1.25;

Vs=(22/7)*(1/4)*D*D*L;
Vc=0.05*Vs;
V1=Vs+Vc;
V4=Vc*[(P2/P1)^(1/n)];

IP=[n/(n-1)]*[P1*100*(V1-V4)]*[((P2/P1)^((n-1)/n))-1];
IPf=IP**(N/60)
printf('IP: %3.2f kJ',IPf);
printf('\n');

Pm=IP/Vs;
printf('Mean Effective Pressure: %3.2f kN/m^2',Pm);
printf('\n');
