clc
clear

Va=3;
Pa=1;
Ta=17+273;
P2=8.2;
N=300;
n=1.35
LD=1.2;
Em=0.9;
C=0.05;

P1=Pa-0.05;
T1=Ta+10;
V14=[Pa*Va*T1]/[P1*Ta];

IP=[n/(n-1)]*[P1*100*V14/60]*[((P2/P1)^((n-1)/n))-1];
BP=IP/Em;
printf('BP: %3.1f kW',BP);
printf('\n');

Ev=1+C-[C*((P2/P1)^(1/n))];
printf('Volumetric Efficiency: %3.1f Percent',Ev*100);
printf('\n');

Vs=(22/7)*(1/4)*LD;
VsMin=Vs*2*N;
D3=V14/[VsMin*Ev];
D=D3^(1/3);
printf('Cylinder Diameter: %3.0f mm',D*1000);
printf('\n');
