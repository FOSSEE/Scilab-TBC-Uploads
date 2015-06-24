clc
clear

P1=100;
T1=300;
P2=650;
n=1.25;
r=0.05;

Ev=1-[r*(((P2/P1)^(1/n))-1)];
printf('Volumetric Efficiency= %2.2f Percent',Ev*100);
printf('\n');
