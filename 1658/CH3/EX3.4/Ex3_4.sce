clc;
//ex 3.4
mun=0.38;
mup=0.18;
n=2.5*10**19;
a=0.13;
b=0.05;
n2=1.5*10**16;
q=1.6*10**-19;
sigma=q*n*(mun+mup);// intrinsic coductivity for germanium
disp('ohm-mu^-1',sigma*1,"sigma=");
sigma1=q*n2*(a+b);//intrinsic coductivity for silicon
disp('ohm-m^-1',sigma1*1,"sigma1");
