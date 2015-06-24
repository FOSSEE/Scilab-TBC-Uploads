clc
clear

P1=1;
P2=5.5;
T1=27+273;
Pa=1.01325;
Ta=17+273;
C=0.06;
n=1.3;

Ev=[(P1*Ta)/(Pa*T1)]*[1+C-(C*((P2/P1)^(1/n)))];
printf('Volumetric Efficiency: %3.0f Percent',Ev*100);
printf('\n');
