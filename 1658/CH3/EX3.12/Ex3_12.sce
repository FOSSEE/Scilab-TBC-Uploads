clc;
//ex3.12
d=0.001;
q=1.6*10**-19;
ND=10**20;
R=1000;
mun=0.1;
n=ND;//number of free electrons
sigma=q*n*mun;//conductivity
disp('S/m',sigma*1,"sigma=");
a=(1/sigma)*(1/(%pi*(0.001^2)/4));
l=R/a;
disp('mm',l*10**3,"l=");
