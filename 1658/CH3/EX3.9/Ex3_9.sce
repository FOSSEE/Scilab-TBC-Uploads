clc;
//ex3.9
rho=100;
q=1.6*10**-19;
mun=0.36;
sigma=1/rho;
disp('(ohm-m)^-1',sigma*1,"sigma=");
ND= sigma/(q*mun);//donar concentration
disp('atoms/m^3',ND*1,"ND=");
