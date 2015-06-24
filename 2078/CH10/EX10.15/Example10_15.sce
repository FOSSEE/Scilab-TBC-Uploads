//Exa 10.15
clc;
clear;
close;
//Given data :
L=300;//m
slope=1/20;
w=0.80;//kg/m
hl=30;//m
T0=1500;//kg
CD=L;//m
tan_alfa=slope;
ED=CD*tan_alfa;//m
AC=hl;//m
BE=hl;//m
BD=BE+ED;//m
//S1=w*x1^2/2/T0;//m
//S2=w*(L-x1)^2/2/T0;//m
h=15;//m
ED=h;//m
x1=L/2-T0*h/w/L;//m
S1=w*x1^2/2/T0;//m
S2=w*(L-x1)^2/2/T0;//m
OG=AC-S1-x1*tan_alfa;//m
Clearance=OG;//m
disp(Clearance,"Clearance of the lowest point from ground(m)");
//y=x*tan_alfa-OG;//m
//C1=w*x^2/2/T0-(x/20-OG)
x=T0/20/w;//m(Byy putting dC1/dx=0)
C1=w*x^2/2/T0-(x/20-OG);//m
disp(C1,"Minimum clearance(m)");
