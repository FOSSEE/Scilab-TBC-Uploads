clc;
//e.g 3.8
ND=10**21;
NA=5*10**20;
q=1.6*10**-19;
mun=0.18;
ND1=ND-NA;//number of free electrons
disp('/m^3',ND1*1,"ND1=");
SIGMA=ND1*q*mun;//conductivity of silicon
disp('ohm-m^-1',SIGMA*1,"SIGMA=");
