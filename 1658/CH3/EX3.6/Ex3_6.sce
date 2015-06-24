clc;
//ex3.6
q=1.60*10**-19;
l=0.2*10**-3;
a=0.04*10**-6;
v=1;
i=8*10**-3;
mun=0.13;
//concentration of free electrons
R=v/i;//resistance
disp('ohm',R*1,"R=");
rho=(R*a)/l;
disp('ohm-m',rho*1,"rho=");
sigma=1/rho;//conductivity
n=sigma/(q*mun);//concentration of free electrons
disp('/m^3',n*1,"n=")
//Drift velocity
j=i/a;
disp('amp/m^2',j*1,"j=");
v=j/(n*q);
disp('m/sec',v*1,"v=");
