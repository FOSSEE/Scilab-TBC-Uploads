clc;
//ex3.3
p=1.54*10**-8;
n=5.8*10**28;
q=1.6*10**-19;
sigma=1/p;//p=1/sigma..conductivity
disp('S/m',sigma*1,"sigma=");
mu=sigma/(q*n*10^-2);//mobility
disp('m^2/vs',mu*1,"mu=");
m=9.1*10**-31;
t=(m*mu)/q;//relaxation time
disp('ps',t*10^12,"t=");
