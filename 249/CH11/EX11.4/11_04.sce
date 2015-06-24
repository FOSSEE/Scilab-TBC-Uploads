clear
clc
k=0.307;
//Given mean residence time(min)
t=15;
//For plug flow with negligible density
fr_unconverted=exp(-k*t);
printf("\n The fraction of reactant unconverted in a plug flow reactor is %f",fr_unconverted)
//For the real reactor
T=[5;10;15;20;25;30];//given time
E=[0.03;0.05;0.05;0.04;0.02;0.01];//given
dt=5;
sum1=0;
for i=1:6
    sum1=sum1+exp(-k*T(i))*E(i)*dt;
end
printf("\n The fraction of reactant unconverted in a real reactor is %f",sum1)