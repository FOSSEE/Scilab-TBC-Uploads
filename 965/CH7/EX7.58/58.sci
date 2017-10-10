clc;
clear all;
disp("required tube length")

U=1.2;//m/s
ti=40;//degree C
ts=85;// degree C
to=75;// degree C
x=3.5/100;//m
y=1.5/100;//m
//As=2*(x+y)*L
rho=985.5;//kg/m^3
k=0.653;//W/m.C
v=0.517*10^(-6);// m^2/s
cp=4190;//J/kg.K
m=x*y*rho*U;
Q=m*cp*(to-ti);// W
th1=ts-ti;
th2=ts-to;
thm=(th1-th2)/log(th1/th2);// degree C
Lc=2*x*y/(x+y);
Re=Lc*U/v;
Pr=rho*v*cp/k;
Nu=0.023*Re^0.8*Pr^(1/3);
h=Nu*k/Lc;
As=Q/(h*thm);
L=As/(2*x+2*y);
disp("m",L,"Required tube length for raise in temperature is =")

