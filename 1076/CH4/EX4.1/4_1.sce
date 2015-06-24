clear;
clc;

C=1;
C1=0.1;
V=66;
n=4;

v1= 1;
v2= (C+C1) * v1;
v3= (C * v2) + (C1*(v1+v2));
v4= (C * v3) + (C1*(v1+v2+v3));

V1= V/(sqrt(3)*(v1+v2+v3+v4));
V2= v2* V1;
V3= v3* V1;
V4= v4* V1;
mprintf("\n V1= %.2f kV",V1);
mprintf("\n V2= %.2f kV",V2);
mprintf("\n V3= %.2f kV",V3);
mprintf("\n V4= %.2f kV",V4);

eff= (V1+V2+V3+V4)/(n*V4) *100;
mprintf("\n string efficiency= %.1f percent",eff);
