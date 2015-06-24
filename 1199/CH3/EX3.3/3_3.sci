//3.3
clc;
t=2;
T2=180;
T1=20;
T=T2-T1;
A=12.5*10^-6;
r=t/(2*T*A);
printf("\nRadius of curvature =%.0f mm",r)
Th=40/500;
y=r*(1-cos(Th));
printf("\nvertical displacement =%.0f mm",y)
