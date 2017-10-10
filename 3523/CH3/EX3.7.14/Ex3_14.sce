//Example 14// Ch 3
clc;
clear;
close;
// given data
p=1.01*10^5/760;// 1 torr in N/m2
k=1.38*10^-23;
T=273; //in Kelvin
n=85*10^2;//no of collisions per meter
N=p/(k*T);
printf("no of gas molecules %e atoms/m^3",N)
r_a=sqrt(n/(%pi*N*1));
printf("diameter of argon atom %e m",r_a)



