//Example 18.3 : magnetic moment
clc;
clear;
close;
//given data :
format('v',9)
mu0=4*%pi*10^-7;
mu_b=9.27*10^-24;// A.m^2
p=8.9; // in g/cm^3
Na=6.023*10^23;// avogadro's number
A=58.71; // in g/mol
n=((p*Na)/A)*10^6;
Bs=0.65;//in Wb/m^2
Ms=Bs/mu0;
m_mu_b=Ms/n;
disp(m_mu_b,"saturation magnetisation,m_mu_b(A.m^2) = ")
