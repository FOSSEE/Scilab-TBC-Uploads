//3.2
clc;
tA=1;
tB=1;
m=tA/tB;
EB=147;
EA=216;
T2=200;
T1=25;
n=EB/EA;
T=T2-T1;
A=12.5*10^-6;
B=1.7*10^-6;
a=3*(1+m)^2;
b=(1+m*n)*((m^2)+1/(m*n));
c= (6*(A-B)*T*(1+m)^2);
r=(a+b)/c;
printf("\nRadius of curvature =%.2f mm",r)
