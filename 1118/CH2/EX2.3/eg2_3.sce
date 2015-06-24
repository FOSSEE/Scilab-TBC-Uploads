clear;
clc;

s=5*10^6;
l=50*10^3;
pf=0.8;
eff=.9;
v=33*10^3;
rho=2.85*10^(-8);
pl=0.1*s*pf;
i=s/v;
a1=2*i*i*rho*l/pl;
vol=2*l*a1;
printf("the volume of theconductor required is:%.2f cubic meter",vol);

//b)

il=s/(sqrt(3)*v);
a2=3*il*il*rho*l/pl;

vol=3*l*a2
printf("\n the volume of theconductor required is:%.2f cubic meter",vol);









